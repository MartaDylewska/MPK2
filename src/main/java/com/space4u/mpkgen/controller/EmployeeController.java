package com.space4u.mpkgen.controller;

import com.space4u.mpkgen.model.Building;
import com.space4u.mpkgen.model.Employee;
import com.space4u.mpkgen.model.Project;
import com.space4u.mpkgen.model.ServType;
import com.space4u.mpkgen.service.implementation.BuildingServiceImpl;
import com.space4u.mpkgen.service.implementation.ProjectServiceImpl;
import com.space4u.mpkgen.service.implementation.ServTypeServiceImpl;
import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class EmployeeController {

    @Getter
    @Setter
    private static Employee employee;

    // == fields ==

    private BuildingServiceImpl buildingService;
    private ProjectServiceImpl projectService;
    private ServTypeServiceImpl servTypeService;

    public EmployeeController(BuildingServiceImpl buildingService,
                              ProjectServiceImpl projectService,
                              ServTypeServiceImpl servTypeService) {
        this.buildingService = buildingService;
        this.projectService = projectService;
        this.servTypeService = servTypeService;
    }

    @RequestMapping("/building_choose")
    public String viewBuildingListPage(Model model){
        List<Building> buildingList = buildingService.findAll();
        model.addAttribute("buildings", buildingList);
        return "building_choose";
    }

    @GetMapping("/chooseBuilding")
    public String showBuildingProjectsPage(Model model, @RequestParam("buildingId") int id){
        Building building = buildingService.getBuildingById(id);
        List<Project> projectsForBuilding = building.getProjects();
        model.addAttribute("chosenBuilding", building);
        model.addAttribute("projectsForBuilding", projectsForBuilding);
        return "building_projects";
    }

    @RequestMapping("/addNewBuilding")
    public String showNewBuildingPage(Model model){
        Building building = new Building();
        model.addAttribute("building", building);
        return "new_building";
    }

    @RequestMapping(value="/saveBuilding", method= RequestMethod.POST)
    public String saveBuildingAndProject(@ModelAttribute("building") Building building){
        int buildingNr = buildingService.getLastNrBuilding()+1;
        building.setNrBuilding(buildingNr);
        buildingService.save(building);
        //Building currentBuilding = buildingService.findBuildingByName(building.getName());
        Building currentBuilding = buildingService.getLastBuilding();
        String currentBuildingNr = String.valueOf(currentBuilding.getNrBuilding());
        String MPK;
        if(currentBuildingNr.length()==2)
            MPK = "0"+currentBuildingNr+"0000";
        else
            MPK=currentBuildingNr+"0000";
        projectService.createProjectForProposals(MPK,currentBuilding,servTypeService);

        return "redirect:/";
    }

    @GetMapping("/generateMPK")
    public String showGenerateMPKPage(Model model, @RequestParam("chosenBuildingId") int id){
        Building building = buildingService.getBuildingById(id);
        List<ServType> servTypeList = servTypeService.findAll();
        Project newProject = new Project();
        model.addAttribute("chosenBuilding", building);
        model.addAttribute("newProject", newProject);
        model.addAttribute("servTypeList", servTypeList);
        return "generateMPK";
    }

    @RequestMapping(value="/saveMPK", method=RequestMethod.POST)
    public String saveProjectAndGenerateMPK(@ModelAttribute("newProject") Project newProject, @RequestParam("chosenBuildingId") int buildingId){
        //pobieramy  budynek na podstawie requestParam
        Building building = buildingService.getBuildingById(buildingId);
        //ustawiamy go jako budynek dla nowego projektu
        newProject.setBuilding(building);
        //pobieramy ostatni numer projektu na tym budynku i ustawiamy na tej podstawie nowy dodając "1"
        int currentProjectNr = projectService.getCurrentProjectNr(building);
       /* List<Project> projectsForThisBuilding = building.getProjects();
        projectsForThisBuilding.sort(new Comparator<Project>() {
            @Override
            public int compare(Project o1, Project o2) {
                return Integer.compare(o1.getNr_project(),o2.getNr_project());
            }
        });
        int lastProjectNr = projectsForThisBuilding.get(projectsForThisBuilding.size()-1).getNr_project();
        int currentProjectNr = lastProjectNr+1;*/
        newProject.setNr_project(currentProjectNr);
        projectService.save(newProject);

        int currentBuildingNr = building.getNrBuilding();
        StringBuffer MPK = projectService.createMPKNoLastCharacter(currentBuildingNr,currentProjectNr);

        //pobieramy nowo zachowany projekt i z niego bierzemy typ usługi do wygenerowania MPK
        Project newProjectForData = projectService.getLastProject();
        MPK.append(newProjectForData.getServtype().getIdservtype());
        newProject.setMpk(MPK.toString());

        //zapisujemy nasz projekt z powrotem do bazy
        projectService.save(newProject);

        //jeżeli IdServType == 5 to trzeba też dać nowy projekt o tych samych parametrach ale idServType = 6 i inne MPK
        if(newProjectForData.getServtype().getIdservtype() == 5){
        //ustawiamy MPK dla nowego projektu - usuwamy 5 i zamieniamy na 6
            MPK.deleteCharAt(MPK.length()-1);
            MPK.append(6);
            Project newGuaranteeProject = projectService.createProjectForGuarantee(MPK,newProject,servTypeService);
            projectService.save(newGuaranteeProject);
        }

        return "redirect:/";
    }

}

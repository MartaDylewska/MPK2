package com.space4u.mpkgen.service.implementation;

import com.space4u.mpkgen.model.Building;
import com.space4u.mpkgen.model.Project;
import com.space4u.mpkgen.model.ServType;
import com.space4u.mpkgen.repository.BuildingRepository;
import com.space4u.mpkgen.repository.ProjectRepository;
import com.space4u.mpkgen.repository.ServTypeRepository;
import com.space4u.mpkgen.service.ProjectService;
import com.space4u.mpkgen.service.ServTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;
import java.util.Optional;

@Service
public class ProjectServiceImpl implements ProjectService {

    @Autowired
    private ProjectRepository projectRepository;
    @Autowired
    private BuildingRepository buildingRepository;
    @Autowired
    private ServTypeRepository servTypeRepository;

    @Override
    public List<Project> findAll() {
        List<Project> projects = projectRepository.findAll();
        projects.sort(Comparator.comparing(o -> o.getBuilding().getName()));
        return projects;
    }

    @Override
    public void deleteProjectById(int id) {
        projectRepository.deleteById(id);
    }

    @Override
    public Project getProjectById(int id) {
        return projectRepository.getOne(id);
    }

    @Override
    public void save(Project project) {
        projectRepository.save(project);
    }

    @Override
    public void createProjectForProposals(String MPK, Building building, ServTypeServiceImpl servTypeService) {
        Project project = new Project();
        project.setMpk(MPK);
        project.setNr_project(0);
        project.setBuilding(building);
        ServType servType = servTypeService.getServTypeById(0);
        project.setServtype(servType);
        project.setShort_description("OFERTOWANIE I MARKETING");
        projectRepository.save(project);
    }

    @Override
    public Project createProjectForGuarantee(StringBuffer MPK, Project newProject, ServTypeService servTypeService) {
        Project newGuaranteeProject = new Project();
        newGuaranteeProject.setNr_project(newProject.getNr_project());
        newGuaranteeProject.setMpk(MPK.toString());
        newGuaranteeProject.setBuilding(newProject.getBuilding());
        newGuaranteeProject.setServtype(servTypeService.getServTypeById(6));
        newGuaranteeProject.setTenant(newProject.getTenant());
        newGuaranteeProject.setShort_description("Gwarancja dla " + newProject.getDate()+"_"+newProject.getShort_description());
        return newGuaranteeProject;
    }

    //tworzymy MPK na podstawie nr projektu i liczby znaków
    //numery budynków zaczynaja sie od 11 wiec nie bedzie krotszy niz 2 znaki
    @Override
    public StringBuffer createMPKNoLastCharacter(int currentBuildingNr, int currentProjectNr) {
        StringBuffer MPK = new StringBuffer();
        if(String.valueOf(currentBuildingNr).length()==2){
            MPK.append("0");}
        MPK.append(currentBuildingNr);
        if (String.valueOf(currentProjectNr).length() == 1){
            MPK.append("00");
        }
        else if(String.valueOf(currentProjectNr).length() == 2){
            MPK.append("0");
        }
        MPK.append(currentProjectNr);
        return MPK;
    }

    @Override
    public int getCurrentProjectNr(Building building) {
        List<Project> projectsForThisBuilding = building.getProjects();
        projectsForThisBuilding.sort(Comparator.comparingInt(Project::getNr_project));
        return projectsForThisBuilding.get(projectsForThisBuilding.size()-1).getNr_project()+1;
    }

    @Override
    public Project getLastProject() {
        return projectRepository.findTopByOrderByIdProjectDesc();
    }

    private Building extractBuildingFromRepository(int buildingId){
        Optional<Building> optionalBuilding = buildingRepository.findById(buildingId);
        if(!optionalBuilding.isPresent()){
            throw new IllegalArgumentException("There is no such building in database");
        }
        return optionalBuilding.get();
    }

    private ServType extractServTypeFromRepository(int servTypeId){
        Optional<ServType> optionalServType = servTypeRepository.findById(servTypeId);
        if(!optionalServType.isPresent()){
            throw new IllegalArgumentException("There is no such servType in database");
        }
        return optionalServType.get();
    }


}

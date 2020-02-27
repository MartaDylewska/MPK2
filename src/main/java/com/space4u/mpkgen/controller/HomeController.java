package com.space4u.mpkgen.controller;

import com.space4u.mpkgen.api.request.LoginRequest;
import com.space4u.mpkgen.model.Employee;
import com.space4u.mpkgen.model.Project;
import com.space4u.mpkgen.service.EmployeeService;
import com.space4u.mpkgen.service.ProjectService;
import com.space4u.mpkgen.service.implementation.BuildingServiceImpl;
import com.space4u.mpkgen.service.implementation.EmployeeServiceImpl;
import com.space4u.mpkgen.service.implementation.ProjectServiceImpl;
import com.space4u.mpkgen.service.implementation.ServTypeServiceImpl;
import com.space4u.mpkgen.util.ExcelView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class HomeController {
    @Autowired
    private BuildingServiceImpl buildingService;
    @Autowired
    private ProjectServiceImpl projectService;
    @Autowired
    private ServTypeServiceImpl servTypeService;
    @Autowired
    private EmployeeServiceImpl employeeService;

   /* public HomeController(EmployeeServiceImpl employeeService, ProjectServiceImpl projectService){
        this.employeeService = employeeService;
        this.projectService = projectService;
    }*/

    @RequestMapping("/")
    public String viewHomePage(Model model){
        model.addAttribute("projects", projectService.findAll());
        EmployeeController.setEmployee(null);
        return "index";
    }

    @RequestMapping("/loginForm")
    public String viewLoginPage(Model model){
        LoginRequest loginRequest = new LoginRequest();
        model.addAttribute("loginRequest",loginRequest);
        return "/loginForm";
    }

    @GetMapping("/login")
    public String loginUser(@ModelAttribute("loginRequest") LoginRequest request, Model model){
        Employee employee = employeeService.findEmployeeByLoginAndPassword(request);
        if(employee!=null){
            model.addAttribute("employee", employee);
            EmployeeController.setEmployee(employee);
            return "/employeeView";
        }
        return "/invalidLogin";
    }

    @RequestMapping(value="/downloadExcel", method = RequestMethod.GET)
    public ModelAndView downloadExcel(Model model){
        model.addAttribute("projects", projectService.findAll());
        return new ModelAndView(new ExcelView(), "projects", projectService.findAll());
    }

    @RequestMapping("/delete/{id}")
    public String deleteProject(@PathVariable(name="id") int id){
        projectService.deleteProjectById(id);
        return "redirect:/";
    }

    @RequestMapping("/edit/{id}")
    public ModelAndView showEditProjectPage(@PathVariable(name="id") int id, Model model){
        ModelAndView mav = new ModelAndView("edit_project");
        Project project = projectService.getProjectById(id);
        mav.addObject("project", project);
        model.addAttribute("servTypeList", servTypeService.findAll());
        return mav;
    }

    @RequestMapping(value="/saveEditedProject", method = RequestMethod.POST)
    public String saveEditedProject(@ModelAttribute("project") Project project){
        projectService.save(project);
        return "redirect:/";
    }


}

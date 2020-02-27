package com.space4u.mpkgen.service;

import com.space4u.mpkgen.model.Building;
import com.space4u.mpkgen.model.Project;
import com.space4u.mpkgen.service.implementation.ServTypeServiceImpl;

import java.util.List;

public interface ProjectService {

    List<Project> findAll();
    void deleteProjectById(int id);
    Project getProjectById(int id);
    void save(Project project);
    void createProjectForProposals(String MPK,Building building, ServTypeServiceImpl servTypeService);
    Project getLastProject();
    Project createProjectForGuarantee(StringBuffer MPK, Project newProject, ServTypeService servTypeService);
    StringBuffer createMPKNoLastCharacter(int currentBuildingNr, int currentProjectNr);
    int getCurrentProjectNr(Building building);
}

package com.space4u.mpkgen.repository;

import com.space4u.mpkgen.model.Building;
import com.space4u.mpkgen.model.Project;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProjectRepository extends JpaRepository<Project, Integer> {

    List<Project> findAllByBuilding(Building building);
    Project findTopByOrderByIdProjectDesc();
}

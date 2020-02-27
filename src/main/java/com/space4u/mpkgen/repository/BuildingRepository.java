package com.space4u.mpkgen.repository;

import com.space4u.mpkgen.model.Building;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BuildingRepository extends JpaRepository<Building, Integer> {

    Building findBuildingByName(String name);
    Building findTopByOrderByNrBuildingDesc();
    Building findTopByOrderByIdBuildingDesc();
}

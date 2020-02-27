package com.space4u.mpkgen.service.implementation;

import com.space4u.mpkgen.model.Building;
import com.space4u.mpkgen.repository.BuildingRepository;
import com.space4u.mpkgen.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;

@Service
public class BuildingServiceImpl implements BuildingService {

    @Autowired
    private BuildingRepository buildingRepository;
/*
    public BuildingServiceImpl(BuildingRepository buildingRepository){
        this.buildingRepository = buildingRepository;
    }
*/

    @Override
    public List<Building> findAll() {
        List<Building> buildingList = buildingRepository.findAll();
        buildingList.sort(Comparator.comparing(Building::getName));
        return buildingList;
    }


    @Override
    public void deleteBuildingById(int id) {
        buildingRepository.deleteById(id);
    }

    @Override
    public Building getBuildingById(int id) {
        return buildingRepository.getOne(id);
    }

    @Override
    public Building findBuildingByName(String name) {
        return buildingRepository.findBuildingByName(name);
    }

    @Override
    public void save(Building building) {
        buildingRepository.save(building);
    }

    @Override
    public int getLastNrBuilding() {
        return buildingRepository.findTopByOrderByNrBuildingDesc().getNrBuilding();
    }

    @Override
    public Building getLastBuilding() {
        return buildingRepository.findTopByOrderByIdBuildingDesc();
    }
}

package com.space4u.mpkgen.service.implementation;

import com.space4u.mpkgen.model.ServType;
import com.space4u.mpkgen.repository.ServTypeRepository;
import com.space4u.mpkgen.service.ServTypeService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServTypeServiceImpl implements ServTypeService {

    private ServTypeRepository servTypeRepository;

    public ServTypeServiceImpl (ServTypeRepository servTypeRepository){
        this.servTypeRepository = servTypeRepository;
    }

    @Override
    public List<ServType> findAll() {
        return servTypeRepository.findAll();
    }

    @Override
    public void deleteServTypeById(int id) {
        deleteServTypeById(id);
    }

    @Override
    public ServType getServTypeById(int id) {
        return servTypeRepository.getOne(id);
    }

}

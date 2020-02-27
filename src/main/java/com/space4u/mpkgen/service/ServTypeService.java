package com.space4u.mpkgen.service;

import com.space4u.mpkgen.model.ServType;

import java.util.List;

public interface ServTypeService {

    List<ServType> findAll();
    void deleteServTypeById(int id);
    ServType getServTypeById(int id);
}

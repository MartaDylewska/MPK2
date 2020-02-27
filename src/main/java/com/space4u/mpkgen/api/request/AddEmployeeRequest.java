package com.space4u.mpkgen.api.request;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.SecondaryTable;

/**
 * Class used as a data wrapper for Employee requests
 */
@Getter
@Setter
public class AddEmployeeRequest {
    private String login;
    private String password;

    public AddEmployeeRequest(){}
}

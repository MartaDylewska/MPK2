package com.space4u.mpkgen.service.implementation;

import com.space4u.mpkgen.api.request.AddEmployeeRequest;
import com.space4u.mpkgen.api.request.LoginRequest;
import com.space4u.mpkgen.model.Employee;
import com.space4u.mpkgen.repository.EmployeeRepository;
import com.space4u.mpkgen.service.EmployeeService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Service class defining CRUD operations on Employee objects
 */

@Service
public class EmployeeServiceImpl implements EmployeeService {

    EmployeeRepository employeeRepository;

    public EmployeeServiceImpl(EmployeeRepository employeeRepository){
        this.employeeRepository = employeeRepository;
    }

    @Override
    public Employee findEmployeeByLoginAndPassword(LoginRequest request) {
        String login = request.getLogin();
        String password = request.getPassword();
        return employeeRepository.findEmployeeByLoginAndAndPassword(login, password);
    }

    @Override
    public List<Employee> findAll() {
        return employeeRepository.findAll();
    }

    @Override
    public int addEmployee(AddEmployeeRequest request) {
        Employee employee = new Employee();
        employee.setLogin(request.getLogin());
        employee.setPassword(request.getPassword());
        employee = employeeRepository.save(employee);
        return employee.getIdemployee();
    }

    @Override
    public void deleteEmployeeById(int idemployee) {
        employeeRepository.deleteById(idemployee);
    }

    @Override
    public Employee getEmployeeById(int idemployee) {
        return employeeRepository.getOne(idemployee);
    }
}

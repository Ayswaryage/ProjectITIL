package com.ProjectITIL.dao;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.ProjectITIL.model.Employee;
import com.ProjectITIL.service.EmployeeService;



public interface Itil_dao extends CrudRepository<Employee, Integer>  {

	/*@Query(value = "select employee_role FROM employee  WHERE employee_name = ? and password=?",
	nativeQuery=true)*/
	public Employee findByEmployeeNameAndPassword(String employeeName,String password);
	


	}



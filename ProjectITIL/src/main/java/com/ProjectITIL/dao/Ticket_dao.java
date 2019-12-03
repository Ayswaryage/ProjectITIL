package com.ProjectITIL.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.ProjectITIL.model.Employee;
import com.ProjectITIL.model.Ticket;


public interface Ticket_dao extends CrudRepository<Ticket, Integer>  {
	
@Modifying
@Query(value = "update ticket set ticket_type=? where employee_id=?",
			nativeQuery=true)
public int updateEmployee(String var,int employeeId);

public List<Ticket> findByEmployeeId(int employeeId);

@Query(value = "select * FROM ticket  WHERE ticket_type=?",
nativeQuery=true)
public List<Ticket> findByTicketType(String ticketType);
 

}


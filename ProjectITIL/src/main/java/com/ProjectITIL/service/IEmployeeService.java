package com.ProjectITIL.service;

import java.util.List;

import com.ProjectITIL.model.Employee;
import com.ProjectITIL.model.Ticket;



public interface IEmployeeService {

public Employee findRole(Employee employee);
public List<Ticket> myTickets(int employeeId);
public Ticket newTicket(Ticket ticket);
public List<Ticket> viewNewTickets();
public Ticket ticketAssignation();
public List<Ticket> viewAssignedTickets();
public Ticket ticketPorcessState();

}
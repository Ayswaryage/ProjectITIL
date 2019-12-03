package com.ProjectITIL.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ProjectITIL.model.Ticket;
import com.ProjectITIL.service.IEmployeeService;

@RestController
public class GatekeeperController {

	@Autowired
	public IEmployeeService employeeService;
	
	
	@RequestMapping(value="/viewnew", method=RequestMethod.GET)
	public ModelAndView viewTicketOperation(@ModelAttribute("Ticket") Ticket ticket,Model model) {
		List<Ticket> newTicketList = employeeService.viewNewTickets();
		ModelAndView view = new ModelAndView("ViewNewForm");
		model.addAttribute("newTicketList", newTicketList);
		return view;
}
	
	@RequestMapping("/assign/{ticketId}")
	public ModelAndView showEditProductPage(@PathVariable(name = "ticketId") int ticketId,Model model) {
	    ModelAndView modelAndView = new ModelAndView("Assign");
	    Map<String, String> teamMembers = new HashMap<String, String>();
	      teamMembers.put("login", "Venkat");
	      teamMembers.put("itime", "Abish");
	      teamMembers.put("ssd", "Sivaraj");
	      
	    model.addAttribute("teamMembers", teamMembers);
	     
	    return modelAndView;
	}
	
	@RequestMapping(value = "/teamMembers", method = RequestMethod.POST)
    public String showPreferences(@ModelAttribute("ticket") Ticket ticket, Model model) {
        model.addAttribute("ticket", ticket);
        System.out.println(ticket.getTeamMember());
        return "Success";
    }
	
	

}
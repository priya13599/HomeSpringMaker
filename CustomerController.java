package com.nucleus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nucleus.dao.ICustomerDao;
import com.nucleus.model.Customer;

@Controller
public class CustomerController {
	
	@Autowired
	ICustomerDao customerDao;
	@RequestMapping("/insertcustomerdetailsform")
	public ModelAndView request1(Customer customer)
	{
		return new ModelAndView("insertcustomerdetailsform");
	}
	
	@RequestMapping("/saveCustomer")
	public ModelAndView request2(Customer customer)
	{
		int flag = customerDao.saveCustomer(customer);
		ModelAndView model = new ModelAndView();
		model.addObject("flag","Record Inserted Successfully");
		model.setViewName("insertcustomerdetailsform");
		return model;
		
	}
	
	@RequestMapping("/deletecustomerdetailsform")
	public ModelAndView request3(Customer customer)
	{
		return new ModelAndView("deletecustomerdetailsform");
	}

	
	@RequestMapping("/deleteCustomer")
	public ModelAndView request4(Customer customer)
	{
		int flag = customerDao.deleteCustomer(customer);
		ModelAndView model = new ModelAndView();
		model.addObject("flag","Record Deleted Successfully");
		model.setViewName("deletecustomerdetailsform");
		return model;
		
	}
	
	
	@RequestMapping("/displaycustomerdetailsform")
	public ModelAndView request5(Customer customer)
	{
		return new ModelAndView("displaycustomerdetailsform");
	}
	
	
	@RequestMapping("/displayCustomer")
	public ModelAndView request6(Customer customer)
	{
		
		Customer customer1 = customerDao.displayCustomer(customer);
		ModelAndView model = new ModelAndView();
		model.addObject("flag","sn1");
		model.addObject("customer",customer1);
		model.setViewName("displaycustomerdetails");
		return model;
		
	}
	
	@RequestMapping("/displaycustomerdetailsform1")
	public ModelAndView request7(Customer customer)
	{
		return new ModelAndView("displaycustomerdetailsform1");
	}
	
	
	@RequestMapping("/displayCustomers")
	public ModelAndView request8(Customer customer)
	{
		
		List<Customer> customer1 = customerDao.displayCustomer1(customer);
		ModelAndView model = new ModelAndView();
		model.addObject("flag","sn2");
		model.addObject("customer",customer1);
		model.setViewName("displaycustomerdetails");
		return model;
		
	}
	

}

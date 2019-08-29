package com.nucleus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@RequestMapping("/ascendingorder")
	public ModelAndView request9()
	{
		List<Customer> customer =customerDao.sortinascending();
		ModelAndView model = new ModelAndView();
		model.addObject("flag","sn2");
		model.addObject("customer",customer);
		model.setViewName("displaycustomerdetails");
		return model;
	}
	
	
	@RequestMapping("/descendingorder")
	public ModelAndView request10()
	{
		List<Customer> customer =customerDao.sortindescending();
		ModelAndView model = new ModelAndView();
		model.addObject("flag","sn2");
		model.addObject("customer",customer);
		model.setViewName("displaycustomerdetails");
		return model;
	}
	
	@RequestMapping("/updatecustomerdetailsform")
	public ModelAndView request11(Customer customer)
	{
		return new ModelAndView("updatecustomerdetailsform");
	}
	
	@RequestMapping("/updateCustomer")
	public ModelAndView request12(Customer customer)
	{
		Customer customer1 =customerDao.updateCustomer(customer);
		System.out.println(customer1.toString());
		ModelAndView model = new ModelAndView();
		model.addObject("customer",customer1);
		model.setViewName("updatecustomerdetails");
		return model;
	}
	
	
	@RequestMapping("/updateCustomerDetails")
	public ModelAndView request13(@ModelAttribute("customer2") Customer customer)
	{
		customerDao.updateCustomerdetails(customer);
		ModelAndView model = new ModelAndView();
		model.addObject("flag","Record Updated Successfully");
		model.setViewName("updatecustomerdetails");
		return model;
	}

}

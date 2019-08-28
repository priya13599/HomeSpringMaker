package com.nucleus.dao;

import java.util.List;

import com.nucleus.model.Customer;

public interface ICustomerDao {
public int saveCustomer(Customer customer);

public int deleteCustomer(Customer customer);

public Customer displayCustomer(Customer customer);

public List<Customer> displayCustomer1(Customer customer);
}

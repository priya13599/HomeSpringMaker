<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="makercheckerlogin.css"> -->
  
  <link href="<c:url value="/View/makercheckerlogin.css" />" rel="stylesheet"/>
<title> Insert Customer Details</title>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="p" %>
<p:url value="resources/makercheckerlogin.css" var="k"/>
<link href="${k}" rel="stylesheet"/>
<%@include file="makerfunctions.jsp" %>
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
</head>
<body>
${flag}
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
 <div id="formFooter"  style="background-color:#e3f2fd; color:#5fbae9">
      <h1> Insert Customer Details</h1>
    </div>
 
       <!-- Login Form -->
   <!--  <form name="myform" action="CustomerController" method="post" onsubmit="return validateemail()">
      <input type="text" id="code" class="fadeIn second" name="customercode" placeholder="Customer Code" required>
      <input type="text" id="name" class="fadeIn third" name="customername" placeholder="Customer Name" required>
            <textarea rows="2" cols="45" name ="address1" placeholder = Address1></textarea>
        <textarea rows="2" cols="45" name="address2" placeholder = Address2 ></textarea>
          <input type="text" id="pincode" class="fadeIn third" name="pincode" placeholder="Customer Pincode" required>
            <input type="text" id="email" class="fadeIn third" name="email" placeholder="Email Address" required>
              <input type="text" id="contactno" class="fadeIn third" name="contactno" placeholder="Contact Number" required>
                <input type="text" id="person" class="fadeIn third" name="contactperson" placeholder="Primary Contact Person" required> -->
                
                <s:form action="saveCustomer" modelAttribute="customer">
               <p:message code="label.customer.customerCode" var="code"> </p:message> <s:input path="customerCode" placeholder="${code}" />
                <p:message code="label.customer.customerName" var="name"> </p:message> <s:input path="customerName" placeholder="${name}" />
                 <p:message code="label.customer.address1" var="addrs1"> </p:message> <s:input path="address1" placeholder="${addrs1}" />
                  <p:message code="label.customer.address2" var="addrs2" > </p:message> <s:input path="address2" placeholder="${addrs2}"/>
                   <p:message code="label.customer.pinCode" var="pin"> </p:message> <s:input path="pinCode" placeholder="${pin}"/>
                    <p:message code="label.customer.email" var="email"> </p:message> <s:input path="email" placeholder="${email}"/>
                     <p:message code="label.customer.contactNo" var="no"> </p:message> <s:input path="contactNo" placeholder="${no}"/>
                      <p:message code="label.customer.contactPerson" var="person"> </p:message> <s:input path="contactPerson" placeholder="${person}"/>
               
                <br>
                <br>
                 <!-- <div class="dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" name="flag">Active_Inactive_Flag
    <span class="caret"></span></button>
    <ul class="dropdown-menu" >
     
      <li data-value="A"><a href="#">Active</a></li>
      <li data-value ="I"><a href="#">Inactive</a></li>
     
      
    </ul>
  </div> -->
  
  <div class="dropdown">
  
  <s:select path="inactiveFlag" class="btn btn-default dropdown-toggle" data-toggle="dropdown" >
  
  <s:option value="A">Active</s:option>
  <s:option value="I">Inactive</s:option>
  
  </s:select>
  </div>
        <br>
      <br>
      
      
      <input type="submit" class="fadeIn fourth" name ="button" value="Insert" >
   </s:form>

    <!-- Remind Passowrd -->
   
  </div>
</div>
<%-- <%
}
%> --%>
</body>
</html>
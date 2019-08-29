<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="makercheckerlogin.css"> -->
  
  <%-- <link href="<c:url value="/View/makercheckerlogin.css" />" rel="stylesheet"/> --%>
<title> Insert Customer Details</title>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="p" %>
<p:url value="resources/makercheckerlogin.css" var="k"/>
<link href="${k}" rel="stylesheet"/>
<%@include file="makerfunctions.jsp" %>

</head>
<body>
${flag}

 <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
 <div id="formFooter"  style="background-color:#e3f2fd; color:#5fbae9">
      <h1> Update Customer Details</h1>
    </div>
 
      
                
                <s:form action="updateCustomerDetails" modelAttribute="customer2">
                ${customer.getCustomerCode()}
                
               <p:message code="label.customer.customerCode" var="code"> </p:message> <s:input path="customerCode" value="${customer.getCustomerCode()}" />
                <p:message code="label.customer.customerName" var="name"> </p:message> <s:input path="customerName" value="${customer.getCustomerName()}"  />
                 <p:message code="label.customer.address1" var="addrs1"> </p:message> <s:input path="address1" value="${customer.getAddress1()}" />
                  <p:message code="label.customer.address2" var="addrs2" > </p:message> <s:input path="address2" value="${customer.getAddress2()}" />
                   <p:message code="label.customer.pinCode" var="pin"> </p:message> <s:input path="pinCode" value="${customer.getPinCode()}" />
                    <p:message code="label.customer.email" var="email"> </p:message> <s:input path="email" value="${customer.getEmail()}" />
                     <p:message code="label.customer.contactNo" var="no"> </p:message> <s:input path="contactNo" value="${customer.getContactNo()}"/>
                      <p:message code="label.customer.contactPerson" var="person"> </p:message> <s:input path="contactPerson" value="${customer.getContactPerson()}"/>
               
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
  
  <s:option value="A">${customer.getInactiveFlag()}</s:option>
  <s:option value="I">${customer.getInactiveFlag()}</s:option>
  
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
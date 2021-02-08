<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "common.CallService" %>
<%@ page import = "org.json.simple.JSONArray" %>
<%@ page import = "org.json.simple.JSONObject" %>
<%@ page import = "org.json.simple.parser.JSONParser" %>
<%@ page import = "org.json.simple.parser.ParseException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Product Info</title>
</head>
<body>
<%
	CallService cs = new CallService();
	String product1 = cs.getJSON("http://product1:8080");
	String product2 = cs.getJSON("http://product2:8080");
	String product3 = cs.getJSON("http://product3:8080");

	JSONParser parser = new JSONParser();
	Object obj1 = parser.parse(product1);
	JSONObject jsonObj1 = (JSONObject) obj1;
	//String nm_product1 = (String) jsonObj1.get("name");
	//Long qn_product1 = (Long) jsonObj1.get("quantity");
	//Long up_product1 = (Long) jsonObj1.get("unitprice");
	//Long ex_product1 = (Long) jsonObj1.get("expense");
	//Long pr_product1 = (Long) jsonObj1.get("price");

	Object obj2 = parser.parse(product2);
	JSONObject jsonObj2 = (JSONObject) obj2;
	
	Object obj3 = parser.parse(product3);
	JSONObject jsonObj3 = (JSONObject) obj3;
	
	out.println(jsonObj1.toString());
	out.println(jsonObj2.toString());
	out.println(jsonObj3.toString());

	
%>
</body>
</html>
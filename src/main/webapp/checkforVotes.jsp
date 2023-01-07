<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>
<link rel="stylesheet"  type="text/css"  href="style.css?v=1">


 <%
   
    String a[] = new String[100];
 
    Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineVoting","root","1234");
	
	PreparedStatement preparedStatement = con.prepareStatement("select party,count(party) as c from votes group by party");
	ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select party,count(party) as c from votes group by party");
	
    int i=0;
    while(rs.next()){
        int temp = Integer.valueOf(rs.getString("c"));
        int temp1=temp-1;
        a[i]=Integer.toString(temp1);
        i++;
    }
    %>


</head>

<%@ include file="adminNavbar.jsp" %>
<body>

<div class="vote-check">

<table >
<tr>
<th>
Parties
</th>
<th>
Names
</th>
<th>
Votes
</th>
</tr>

<tr>
<td>
<img src="images/Aam_aadmi_party_logo.jpg"alt="AAP">
</td>
<td>AAP</td>
<td><%=a[0]%></td>
</tr>

<tr>
<td>
<img src="images/bjp logo.jpg"alt="BJP">
</td>
<td>BJP</td>
<td><%=a[1]%></td>
</tr>

<tr>
<td>
<img src="images/Elephant_Bahujan_Samaj_Party.svg.png"alt="BSP">
</td>
<td>BSP</td>
<td><%=a[2]%></td>
</tr>

<tr>
<td>
<img src="images/download.png" alt="Congress">
</td>
<td>Congress</td>
<td><%=a[3]%></td>
</tr>

<tr>
<td>
<img src="images/cpi.png" alt="CPI">
</td>
<td>CPI</td>
<td><%=a[4]%></td>
</tr>



</table>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="java.sql.*"%>
     <%@ page trimDirectiveWhitespaces="true" %>
     
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

        <%
    	try{
            String username =request.getParameter("name");
            String password =request.getParameter("address");
            String email =request.getParameter("email");
            String date =request.getParameter("date");
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp","root","root");
    	    String s = "insert into book values(?,?,?,?)";
            
            PreparedStatement p = cn.prepareStatement(s);
             
             p.setString(1,username);
             p.setString(2,password);
             p.setString(3,email);
             p.setString(4,date);
        
        
             int i = p.executeUpdate();
             
             if(i>0)
             {

      			%>
                <jsp:forward page="home.html"></jsp:forward>
            	<%
             }
             else
             {
            	%>
            	out.println("Something went wrong.");
            	<jsp:include page="book.html"></jsp:include>
 				<%
             }
	}
	catch(Exception ex){
	%>
	<%
	out.println("Something went wrong please try again.");
	}
	%>

</body>
</html>
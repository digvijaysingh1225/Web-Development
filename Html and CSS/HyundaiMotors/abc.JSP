<%@ page import="java.sql.*" %>


<%

Connection v=null;
Statement st=null;

String name=request.getParameter("name");
String place=request.getParameter("place");
String gender=request.getParameter("gender");
String contact_number=request.getParameter("contact");

try
{
Class.forName("com.mysql.jdbc.Driver");
v=DriverManager.getConnection("jdbc:mysql://localhost:3306/glauniversity", "root", "Deepu@123");
st=v.createStatement();
String query="Insert into booking_details values('" + name + "','" + place+ "','"+gender+"','"+contact_number+"')";

st.executeUpdate(query);

out.println("Data Submitted successfully");

}//End of try block
catch(Exception e) 
{
out.println(e);
}
%>

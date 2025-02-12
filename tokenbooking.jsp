
<%@page import="java.lang.String"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
<!--
.style12 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 24px;
	font-style: italic;
}
.style13 {
	color: #000000;
	font-weight: bold;
}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
-->
        </style><script type="text/javascript" src="js/datetimepicker_css.js"></script>
		<script type="text/javascript" src="js/general.js"></script>
  <script language="JavaScript" src="js/security.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" /><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}
.active {
  background-color: red;
  color: white;
}
.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
.style24 {font-size: 10px}
.style25 {color: #FF0000}
.style26 {font-size: 12px}
</style>
</head>
    <body bgcolor="#CCCCCC">
    <form action="token1" method="post">
        <%
                HttpSession so = request.getSession(true);
   String ok=(String)request.getAttribute("ok");
   String msg="";
   if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");
   }
    %>
    <table width="966" border="0" align="center" bgcolor="#FFFFFF">
      <tr>
        <td width="960"><table width="960" border="0">
          <tr>
            <td width="954"><table width="950" border="0">
              <tr>
                <td width="292"><img src="image/1_4.jpg" height="131"/></td>
                  <td width="648" align="center"><span class="style18">MedConnect </span></td>
              </tr>
            </table></td>
          </tr>
          <tr>
         <td><div class="navbar">
  <a href="user.jsp">Home</a>
  <a href="t.jsp">Test_Information</a>
<a href="u1.jsp">Information</a> 
   <a href="u2.jsp">Video</a> 
 <a href="tokenbooking.jsp" class="active">Token_booking</a>
<a href="ctoken.jsp">Token_Confirm </a> 

  <a href="login.jsp">Log_out </a>
 </div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="260" background="image/article4.png"><table width="960" border="0">
  <tr>
    <td width="355" height="259">&nbsp;</td>
    <td width="595"><p>&nbsp;</p>
      <p><span class="style12">The clinical summary is a valuable communication tool that supports continuity of patient care by providing relevant and actionable information.</span></p>
      <br><br>
	  <br>
          <p>&nbsp;</p></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="655" ><table width="952" height="653" border="0">
         
          <tr>
            <td height="612"><table width="946" height="610" border="0">
  <tr>
    <td width="148" height="606">&nbsp;</td>
    <td width="620"><table width="566" border="0" align="center">
          <tr>
            <td width="560" height="43" align="center"><span class="style13">Token Booking</span></td>
          </tr>
          <tr>
            <td align="center">
              <table width="400" border="0" align="center">
          <tr>
            <td width="139" ><span class="style13 style26">Hospital*</span></td>
        
                <%

  String pro1=null;
 		try {
			int flag = 0;
    
			String url1 = "jdbc:mysql://localhost:3306/covid";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url1, "root", "root");
			Statement st1 = con1.createStatement();
		
			ResultSet rs1 = st1.executeQuery("select distinct hospital from doctor where role='Doctor' and address='"+so.getAttribute("un3")+"'");
  %> 
                        <td width="251"><span class="style24">
                          <label>
                        </span>
                          <div align="left" class="style24">
                          <select name="a1" value="" style="width:180px;" >
                            <%
          while (rs1.next()) {
				pro1= rs1.getString(1);
           %>
                            <option><%=pro1%></option>
                            <%} %>
                          </select></div>
                        
                          <span class="style24">
                          </label>
                          </span></td>
                       
          <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>
          </tr>
		   <tr>
            <td width="139" ><span class="style13 style26">Specialist *</span></td>
        
                <%

  String pro2=null;
 		try {
			int flag = 0;
    
			String url1 = "jdbc:mysql://localhost:3306/covid";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url1, "root", "root");
			Statement st1 = con1.createStatement();
		
			ResultSet rs1 = st1.executeQuery("select distinct specialist from doctor where role='Doctor' and address='"+so.getAttribute("un3")+"'");
  %> 
                        <td width="251"><span class="style24">
                          <label>
                        </span>
                          <div align="left" class="style24">
                          <select name="a4" value="" style="width:180px;" >
                            <%
          while (rs1.next()) {
				pro2= rs1.getString(1);
           %>
                            <option><%=pro2%></option>
                            <%} %>
                          </select></div>
                        
                          <span class="style24">
                          </label>
                          </span></td>
                       
          <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>
          </tr>
          <tr>
            <td height="43"><span class="style13 style26">Date of Appointment *</span></td>
            <td><div align="left" class="style24">
              <input type="text" style="width:180px" id="a2" name="a2" class="displayValue" onChange="return val_zero('a2','err_a2');" 
 onBlur="return txt_empty('a2','err_a2','Should Not Be Blank');"/>
              <a href="javascript:NewCssCal('a2','yyyymmdd')"><img src="image/cal.jpg" alt="" width="16" height="16" /></a> </div></td>
          </tr>
          <tr>
            <td height="48"><span class="style13 style26">Reason<span class="style25">*</span></span></td>
            <td>  <div align="left" class="style24">
  <textarea id="a3" name="a3" style="width:180px" class="displayValue" onChange="return val_zero('a3','err_a3');"  onBlur="return txt_empty('a3','err_a3','Address Should Not Be Blank');"></textarea>
  &nbsp;&nbsp;</div></td>
          </tr>
          <tr>
            <td height="48">&nbsp;</td>
            <td><span class="style24">
              <label>
              <input type="submit" name="Save" value="Save">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="submit" name="Cancel" value="Cancel">
              </label>
            </span></td>
          </tr>
                </table>
              <p>&nbsp;</p>
              <p align="center" class="red"><strong><%=msg%></strong></p></td>
          </tr>
        </table></td>
    <td width="164">&nbsp;</td>
  </tr>
</table>
</td>
          </tr>
        </table></td>
      </tr>
      </table></td>
      </tr>
          <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
    
</form>
    </body>
</html>

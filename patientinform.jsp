
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>

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
        <title>JSP Page</title><script type="text/javascript" src="js/general.js"></script>
  <script language="JavaScript" src="js/security.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" />       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

.dropdown .dropbtn {
  font-size: 18px;  
  font-weight: bold;
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
.active {
  background-color: red;
  color: white;
}
.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style> <style type="text/css">
<!--
.style12 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 16px;
	font-style: italic;
}
.style21 {color: #000000}
.style22 {color: #FFFFFF}
.style32 {color: #006633}
.style25 {font-size: 12px}
.style27 {font-size: 14}
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="" method="post">
    <table width="1030" border="0" align="center" bgcolor="#FFFFFF">
      <tr>
        <td width="1024"><table width="960" border="0">
          <tr>
            <td width="954"><table width="957" border="0">
              <tr>
                <td width="292"><img src="image/1_4.jpg" height="131"/></td>
                <td width="655" align="center"><span class="style32">MedConnect</span></td>
              </tr>
            </table></td>
          </tr>
          <tr>
             <td><div class="navbar">
  <a href="admin.jsp">Home</a>
 <a href="patientinform.jsp"  class="active">Patient Details</a>
 <a href="dregister.jsp">Doctor Register</a> 
 <a href="login.jsp">Log_Out</a>
</div></td>>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="260" background="image/article5.png"><table width="1024" border="0">
  <tr>
    <td width="355" height="248">&nbsp;</td>
    <td width="659"><p>&nbsp;</p>
      <p><span class="style12">The clinical summary is a valuable communication tool that supports continuity of patient care by providing relevant and actionable information.</span></p>
      <br><br>
	  <br>
          <p>&nbsp;</p></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="31" ><table width="953" border="0">
                      <tr>
                        <td width="947" align="center"><table align="center" width="881" height="256" border="0" cellpadding="1" cellspacing="1">
          <tr>
            <td width="877"  align="center">&nbsp;</td>
          </tr>
    
                      <tr>
                        <td align="center"><table width="917" border="0" align="center">
                      <tr>
                        <td width="911"><table align="center" width="500" height="83" border="0" cellpadding="1" cellspacing="1">
          <tr>
            <td width="496" height="111"><table width="475" height="103" border="0" cellpadding="1" cellspacing="1" align="center">
              
              	   
          <tr>
            <td width="189" height="36"><span class="style37 style21">USER ID </span></td>
            <td width="279"><strong>
              <label>
              <input type="text" name="a1" id="a1" class="displayValue" maxlength="10"  style="width:180px"  onChange="return val_zero('a1','err_a1');" onBlur="return val_mobile('a1','err_a1');" />
                &nbsp;&nbsp;&nbsp;<span id="err_a1">  
              </label></td>
      
          </tr>
         
                     
          <tr>
            <td>&nbsp;</td>
            <td><strong>
              <label></label>
            </strong></td></tr>
              <tr>
                <td height="37"><span >&nbsp;</td>
                <td><strong>
                   <input type="submit" name="View" value="Search" class="buttons" onClick="return validatePage('a1','err_a1','Should Not Be Blank');"  /> 
                  <input type="submit" name="Submit4" value="Cancel" id="label4" />
                </strong></td>
                </tr>
            </table></td>
          </tr>
        </table>
                          <p>&nbsp;</p>
                         <table width="909" border="0">
                      <tr>
                        <td width="903">
                            <table width="200" border="0">
  <tr>
    <td height="37" align="center" bgcolor="#006633"><span class="style29">COVID TEST REPORT </span></td>
  </tr>
  <tr>
    <td><table width="909" border="0" align="center">
              <tr>
                <td width="903"><table width="908" height="25" border="1" >
   <tr>
      
      <td width="141" height="21" align="center"><span class="style36">Fever </span></td>
      <td width="155" align="center"><span class="style36"> cough </span></td>
	 
      <td width="138" align="center"><span class="style36">Throat</span></td>
	    <td width="185" align="center"><span class="style36">Breath</span></td>
      <td width="267" align="center"><span class="style36">Result1</span></td>
    </tr>
	
	</table></td>
              </tr>
              <tr>
                <td><table width="903" border="1"  align=center>
<%
	try
	{  
       	  HttpSession so = request.getSession(true);
              String a11=request.getParameter("a1");
               String url="jdbc:mysql://localhost:3306/covid";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
                        
		ResultSet rs = st.executeQuery("select * from verify3 where uid='"+a11+"'");
		if(rs!=null)
	                  while(rs.next())
		{
                          
                            
    %>
  
	
    <tr>
         
        
           
               <td width="141" align="center"><%=rs.getString(3)%></td>
               <td width="149"  align="center"><%=rs.getString(4)%></td>
        <td width="137" align="center"><%=rs.getString(5)%></td>
      <td width="190" align="center"><%=rs.getString(6)%></td>
	         <td width="264"  align="center"><%=rs.getString(7)%></td>
 
	 
    <%  }
                                       
                          
													}catch(Exception ex){
                                                                                                      
                                                                                                        ex.printStackTrace();}
	%>
    </table></td>
              </tr>
            </table></td>
  </tr>
</table>

			
			
			
			</td>
                      </tr>
                      <tr>
                        <td></td>
                      </tr>
                    </table><BR></Br><table width="919" border="0">
  <tr>
    <td width="909" height="35" align="center" bgcolor="#006633"><span class="style29">NORMAL TEST DETAILS REPORT </span> </td>
  </tr>
  <tr>
    <td><table width="916" border="1" align="center">
                  <tr>
                    <td width="41" ><span >Gender</td>
                
                    <td ><span >Age</td>
                  
                    <td ><span >Smoking</td>
                 
                    <td ><span >weight</td>
                   
                    <td ><span >Alcohol Intake</td>
               
                    <td ><span >High Salt Diet</td>
                 
                    <td ><span >High Saturated fat diet</td>
                   
                    <td ><span >Exercise</td>
                  
                    <td ><span >Sedentary Lifestyle/ Inactivity</td>
                   
                    <td ><span >Hereditary</td>
                 
                    <td ><span >Bad Cholestrol</td>
                   
                    <td ><span >Blood Pressure</td>
                  
                    <td ><span >Blood Sugar</td>
                  
                    <td ><span >Heart Rate</td>
					    <td ><span >Result</td>
                    </tr>
                  
  
	
    <tr><%
	try
	{  
       	  HttpSession so = request.getSession(true);
              String a11=request.getParameter("a1");
               String url="jdbc:mysql://localhost:3306/covid";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
                        
		ResultSet rs = st.executeQuery("select * from verify where uid='"+a11+"'");
		if(rs!=null)
	                  while(rs.next())
		{
                          
                            
    %>
      <td width="41" >   
        
              <div align="center" >
              <%=rs.getString(3)%>               </td>
               <td width="24"><div align="center" ><%=rs.getString(4)%></td>
               <td width="52"><div align="center" ><%=rs.getString(5)%></td>
        <td width="40"><div align="center" ><%=rs.getString(6)%></td>
      <td width="57"><div align="center" ><%=rs.getString(7)%></td>
	         <td width="43"><div align="center" ><%=rs.getString(8)%></td>
      <td width="80"><div align="center" ><%=rs.getString(9)%></td>
	     <td width="52"><div align="center" ><%=rs.getString(10)%></td>
               <td width="92"><div align="center" ><%=rs.getString(11)%></td>
        <td width="61"><div align="center" ><%=rs.getString(12)%></td>
      <td width="67"><div align="center" ><%=rs.getString(13)%></td>
	         <td width="65"><div align="center" ><%=rs.getString(14)%></td>
      <td width="47"><div align="center" ><%=rs.getString(15)%></td>
	   <td width="43"><div align="center" ><%=rs.getString(16)%></td>
	  <td width="58"><div align="center" ><%=rs.getString(17)%></td>
    </tr> <%  }
                                       
                          
													}catch(Exception ex){
                                                                                                      
                                                                                                        ex.printStackTrace();}
	%>
    </table></td>
  </tr>
</table><BR></Br>
<table width="921" border="0">
  <tr>
     <td width="909" height="28" align="center" bgcolor="#006633"><span class="style29">TEST DETAILS REPORT </span> </td>
  </tr>
  <tr>
    <td><table width="901" border="1" align="center">
                  <tr>
                    <td width="75"><div align="center" class="style14"><span >(hr_la)</span></div></td>
                  
                    <td width="82"><div align="center" class="style14"><span >(hba1c_1)</span></div></td>
                 
                    <td width="63"><div align="center" class="style14"><span >(bun_1)</span></div></td>
                  
                    <td width="70"><div align="center" class="style14"><span >(cho_1)</span></div></td>
                
                    <td width="54"><div align="center" class="style14"><span >(tri_1)</span></div></td>
                   
                    <td width="69"><div align="center" class="style14"><span >(glu_1)</span></div></td>
                
                    <td width="61"><div align="center" class="style14"><span >(hdl_1)</span></div></td>
                   
                   
                    <td width="56"><div align="center" class="style14"><span >(ldl_1)</span></div></td>
                  
                    <td width="92"><div align="center" class="style14"><span >(pt_1)</span></div></td>
              
                    <td width="72"><div align="center" class="style14"><span >(aptt_la)</span></div></td>
                   
                 
                    <td width="75"><div align="center" class="style14"><span >(alb_1)</span></div></td>
                 
                  
                    <td width="82"><div align="center" class="style14"><span >(ua_1)</span></div></td>
					<td width="82"><div align="center" class="style14"><span >Result</span></div></td>
                    </tr>
                    <tr><%
	try
	{  
       	  HttpSession so = request.getSession(true);
              String a11=request.getParameter("a1");
               String url="jdbc:mysql://localhost:3306/covid";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
                        
		ResultSet rs = st.executeQuery("select * from verify1 where uid='"+a11+"'");
		if(rs!=null)
	                  while(rs.next())
		{
                          
                            
    %>
      <td width="75" >   
        
              <div align="center" >
              <%=rs.getString(3)%>               </td>
               <td width="82"><div align="center" ><%=rs.getString(4)%></td>
               <td width="63"><div align="center" ><%=rs.getString(5)%></td>
        <td width="70"><div align="center" ><%=rs.getString(6)%></td>
      <td width="54"><div align="center" ><%=rs.getString(7)%></td>
	         <td width="69"><div align="center" ><%=rs.getString(8)%></td>
      <td width="61"><div align="center" ><%=rs.getString(9)%></td>
	     <td width="56"><div align="center" ><%=rs.getString(10)%></td>
               <td width="92"><div align="center" ><%=rs.getString(11)%></td>
        <td width="72"><div align="center" ><%=rs.getString(12)%></td>
      <td width="75"><div align="center" ><%=rs.getString(13)%></td>
	         <td width="82"><div align="center" ><%=rs.getString(14)%></td>
			  <td width="82"><div align="center" ><%=rs.getString(15)%></td>
                    </tr> <%  }
                                       
                          
													}catch(Exception ex){
                                                                                                      
                                                                                                        ex.printStackTrace();}
	%>
                </table></td>
  </tr>
</table>
</td>
              </tr>
            </table></td>
          </tr>
                      <tr>
                        <td></td>
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

<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="samplePersonServiceImplProxyid" scope="session" class="com.Soap.Customer.PersonServiceImplProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
samplePersonServiceImplProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = samplePersonServiceImplProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        samplePersonServiceImplProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        com.Soap.Customer.PersonServiceImpl getPersonServiceImpl10mtemp = samplePersonServiceImplProxyid.getPersonServiceImpl();
if(getPersonServiceImpl10mtemp == null){
%>
<%=getPersonServiceImpl10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 15:
        gotMethod = true;
        com.Soap.Customer.Person[] getAllPersons15mtemp = samplePersonServiceImplProxyid.getAllPersons();
if(getAllPersons15mtemp == null){
%>
<%=getAllPersons15mtemp %>
<%
}else{
        String tempreturnp16 = null;
        if(getAllPersons15mtemp != null){
        java.util.List listreturnp16= java.util.Arrays.asList(getAllPersons15mtemp);
        tempreturnp16 = listreturnp16.toString();
        }
        %>
        <%=tempreturnp16%>
        <%
}
break;
case 18:
        gotMethod = true;
        String id_1id=  request.getParameter("id31");
        int id_1idTemp  = Integer.parseInt(id_1id);
        com.Soap.Customer.Person getPerson18mtemp = samplePersonServiceImplProxyid.getPerson(id_1idTemp);
if(getPerson18mtemp == null){
%>
<%=getPerson18mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">age:</TD>
<TD>
<%
if(getPerson18mtemp != null){
%>
<%=getPerson18mtemp.getAge()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">name:</TD>
<TD>
<%
if(getPerson18mtemp != null){
java.lang.String typename23 = getPerson18mtemp.getName();
        String tempResultname23 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename23));
        %>
        <%= tempResultname23 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(getPerson18mtemp != null){
java.lang.String typeemail25 = getPerson18mtemp.getEmail();
        String tempResultemail25 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail25));
        %>
        <%= tempResultemail25 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">phonenum:</TD>
<TD>
<%
if(getPerson18mtemp != null){
%>
<%=getPerson18mtemp.getPhonenum()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getPerson18mtemp != null){
%>
<%=getPerson18mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 33:
        gotMethod = true;
        String age_3id=  request.getParameter("age38");
        int age_3idTemp  = Integer.parseInt(age_3id);
        String name_4id=  request.getParameter("name40");
            java.lang.String name_4idTemp = null;
        if(!name_4id.equals("")){
         name_4idTemp  = name_4id;
        }
        String email_5id=  request.getParameter("email42");
            java.lang.String email_5idTemp = null;
        if(!email_5id.equals("")){
         email_5idTemp  = email_5id;
        }
        String phonenum_6id=  request.getParameter("phonenum44");
        int phonenum_6idTemp  = Integer.parseInt(phonenum_6id);
        String id_7id=  request.getParameter("id46");
        int id_7idTemp  = Integer.parseInt(id_7id);
        %>
        <jsp:useBean id="com1Soap1Customer1Person_2id" scope="session" class="com.Soap.Customer.Person" />
        <%
        com1Soap1Customer1Person_2id.setAge(age_3idTemp);
        com1Soap1Customer1Person_2id.setName(name_4idTemp);
        com1Soap1Customer1Person_2id.setEmail(email_5idTemp);
        com1Soap1Customer1Person_2id.setPhonenum(phonenum_6idTemp);
        com1Soap1Customer1Person_2id.setId(id_7idTemp);
        boolean addPerson33mtemp = samplePersonServiceImplProxyid.addPerson(com1Soap1Customer1Person_2id);
        String tempResultreturnp34 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addPerson33mtemp));
        %>
        <%= tempResultreturnp34 %>
        <%
break;
case 48:
        gotMethod = true;
        String id_8id=  request.getParameter("id51");
        int id_8idTemp  = Integer.parseInt(id_8id);
        boolean deletePerson48mtemp = samplePersonServiceImplProxyid.deletePerson(id_8idTemp);
        String tempResultreturnp49 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deletePerson48mtemp));
        %>
        <%= tempResultreturnp49 %>
        <%
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>
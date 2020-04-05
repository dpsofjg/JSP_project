<%@ page import="org.json.JSONArray" %>
<%@ page import="org.json.JSONObject" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<script type="text/javascript">
    function makeColor(place) {
     /*   document.write(place);*/
     /*   document.write(this.options[this.selectedIndex].value);*/
     /*   document.write(document.getElementById("colorId").rows[0].cells[1].innerHTML);*/
        document.write(document.getElementById("colTag").innerText);
        if (place === 'bg'){
            document.getElementById('colTag').style.backgroundColor = 'red'}
        else {document.getElementById('colTag').style.color = 'red'}
    }
</script>

<%--<script type="text/javascript">
    function SelectType(){
        if (this.options[this.selectedIndex].value == "1" ){
            document.getElementById('colTag').style.backgroundColor = 'green'}
    else {document.getElementById('colTag').style.backgroundColor = 'red'}
    }
</script>--%>

<html>
<head>
    <title>Colors</title>
</head>
<body>

<%
    JSONArray colorList = (JSONArray) request.getAttribute("colorList");
%>

<table border="1" cellpadding="8" cellspacing="0" style="margin: auto">
    <tr>
        <td>colorNumber</td>
        <td>name</td>
        <td></td>
    </tr>

    <%
        for(int i = 0; i < colorList.length(); i++){
            JSONObject colorInfo = colorList.getJSONObject(i);
    %>

    <tr id="colTag">
    <%--<tr id="colTag" onclick=makeColor('<%=colorInfo.get("name")%>')>--%>
   <%-- <tr bgcolor="red" onMouseOver=this.style.backgroundColor='blue' onMouseOut=this.style.backgroundColor='red'>--%>
    <%-- <tr id="colTag" onclick=makeColor('darkblue')>--%>
  <%--  <tr style="background-color:<%=colorInfo.get("name")%>">--%>
        <td><%=colorInfo.get("colorNumber")%></td>
        <td id="colorId"><%=colorInfo.get("name")%></td>
        <td>
            <form name="myForm">
              <%--  <select id="mySelectId" name="mySelect">--%>
                <select name="mySelect" onChange=makeColor(this.options[this.selectedIndex].value)>
               <%-- <select id="mySelectId" name="mySelect" onChange=makeColor('<%=colorInfo.get("name")%>')>--%>
                    <option value="NNN" >ttt</option>
                    <option value="bg" >Background</option>
                    <option value="lt" >Letters</option>
                </select>
            </form>
        </td>

    </tr>

    <%
        }
    %>
</table>

</body>
</html>

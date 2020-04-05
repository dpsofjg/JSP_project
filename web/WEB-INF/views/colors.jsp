<%@ page import="org.json.JSONArray" %>
<%@ page import="org.json.JSONObject" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<script type="text/javascript">
    function makeColor(a) {
        if (document.getElementById("mySelectId").value == "1"){
            document.getElementById('colTag').style.backgroundColor = 'green'}
        else {document.getElementById('colTag').style.color = a}
    }
/*        var objSel = document.getElementById("mySelectId");
        var d;
    //    document.write(objSel);
        d = document.getElementById('colTag');
        d.style.backgroundColor = a;*/

      // table.rows[3].style.backgroundColor = "red";
</script>

<script type="text/javascript">
    function SelectType(){
        if (this.options[this.selectedIndex].value == "1" ){
            document.getElementById('colTag').style.backgroundColor = 'green'}
    else {document.getElementById('colTag').style.backgroundColor = 'red'}
    }
</script>

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
        <td><%=colorInfo.get("name")%></td>
        <td>
            <form name="myForm">
              <%--  <select id="mySelectId" name="mySelect">--%>
               <%-- <select name="mySelect" onChange="SelectType.call(this)">--%>
                  <select id="mySelectId" name="mySelect" onChange=makeColor('<%=colorInfo.get("name")%>')>
                    <option value="1" >Background</option>
                    <option value="2" >Letters</option>
                </select>
            </form>
        </td>

    </tr>

<%--    <tr style="background-color:<%=colorInfo.get("name")%>">
        <td><%=colorInfo.get("colorNumber")%></td>
        <td><%=colorInfo.get("name")%></td>
        <td> <p>
            <label for="color">Выберите цвет:</label>
            <select id="color" name="color">
                <option value="color"><%=colorInfo.get("name")%></option>
            </select>
        </p></td>
    </tr>--%>

    <%
        }
    %>
</table>

</body>
</html>

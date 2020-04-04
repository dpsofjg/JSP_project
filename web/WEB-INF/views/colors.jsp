<%@ page import="org.json.JSONArray" %>
<%@ page import="org.json.JSONObject" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<script type="text/javascript">
    function makeColor(a) {
        var objSel = document.getElementById("mySelectId");
        var d;
    //    document.write(objSel);
        d = document.getElementById('colTag');
        d.style.backgroundColor = a;

      // table.rows[3].style.backgroundColor = "red";
    }
</script>

<html>
<head>
    <title>Colors</title>
</head>
<body>

<%
    JSONArray colorList = (JSONArray) request.getAttribute("colorList");
    System.out.println("colorList= " + colorList);
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

    <tr id="colTag" onclick=makeColor('<%=colorInfo.get("name")%>')>
   <%-- <tr id="colTag" onclick=makeColor('darkblue')>--%>
  <%--  <tr style="background-color:<%=colorInfo.get("name")%>">--%>
        <td><%=colorInfo.get("colorNumber")%></td>
        <td><%=colorInfo.get("name")%></td>
        <td>
            <form name="myForm">
                <select id="mySelectId" name="mySelect">
                    <option value="color"><%=colorInfo.get("name")%></option>
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

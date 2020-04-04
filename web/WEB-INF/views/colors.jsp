<%@ page import="org.json.JSONArray" %>
<%@ page import="org.json.JSONObject" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    function clickColor(a) {
        var d;
        d = document.getElementById('colTag');
        d.style.color=a;
    };
</script>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
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

    <tr>
        <td><%=colorInfo.get("colorNumber")%></td>
        <td><%=colorInfo.get("name")%></td>
        <td>
            <p id="colTag" onclick="clickColor('red')"><%=colorInfo.get("name")%></p>
            <p>
            <label for="color"></label>
            <select id="color" name="color">
                <option value="color"><%=colorInfo.get("name")%></option>
            </select>
            </p>
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

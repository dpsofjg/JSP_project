<%@ page import="org.json.JSONArray" %>
<%@ page import="org.json.JSONObject" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script type="text/javascript">
    function makeColor(place, color) {
        if (place === 'bg'){
            document.getElementById(color).style.backgroundColor = color}
        else {document.getElementById(color).style.color = color}
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

    <tr id=<%=colorInfo.get("name")%>>
        <td><%=colorInfo.get("colorNumber")%></td>
        <td><%=colorInfo.get("name")%></td>
        <td>
            <form name="myForm">
                <select name="mySelect" onChange=makeColor(this.options[this.selectedIndex].value,'<%=colorInfo.get("name")%>')>
                    <option value="" >Choose color</option>
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

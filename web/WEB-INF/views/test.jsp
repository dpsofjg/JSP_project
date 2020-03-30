<%@ page import="java.util.List" %>
<%@ page import="entities.Color" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test</title>
</head>
<body>
Hey there! It's test servlet page!
<%
    List<Color> colorList = (List<Color>) request.getAttribute("colorList");
    String s = (String) request.getAttribute("ss");

    System.out.println("colorList= " + colorList);
    System.out.println("s= " + s);
    System.out.println("into block");
%>
</body>
</html>

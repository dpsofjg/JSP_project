package servlet;

import util.ColorList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("colorList", ColorList.getColorList());

        System.out.println("colorList= " + ColorList.getColorList());
      //  ColorList colorList = new ColorList();
        System.out.println("jsonArray= "+ ColorList.jsonArray);

       // ColorList colorList = new ColorList();


        request.getRequestDispatcher("WEB-INF/views/colors.jsp").forward(request, response);
    }
}

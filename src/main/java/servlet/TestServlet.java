package servlet;

import entities.Color;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class TestServlet extends HttpServlet {
    private DbTest dbc = new DbTest();

    public void init ()
    {
        ServletContext context = getServletContext();
        context.setAttribute("colorList", new ArrayList<>());
        List<Color> colorList = dbc.getColorList();//загрузка jdbc драйвера
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("ColLLLLLLLList= " + dbc.getColorList());
        request.setAttribute("colorList", dbc.getColorList());
        request.setAttribute("ss", "TEST");

        request.getRequestDispatcher("WEB-INF/views/test.jsp").forward(request, response);
    }
}

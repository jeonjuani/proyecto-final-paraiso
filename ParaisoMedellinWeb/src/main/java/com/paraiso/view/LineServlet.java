package com.paraiso.view;

import com.paraiso.control.LineDaoJDBC;
import com.paraiso.model.Line;
import java.util.List;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "LineServlet", urlPatterns = {"/LineServlet"})
public class LineServlet extends HttpServlet {
      
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("El método doGet() se está ejecutando");
               
        List<Line> lines = new LineDaoJDBC().listar_linea();
        System.out.println("lineas =" + lines);
        request.setAttribute("lines",lines);
        request.getRequestDispatcher("lines.jsp").forward(request, response);
    }

}
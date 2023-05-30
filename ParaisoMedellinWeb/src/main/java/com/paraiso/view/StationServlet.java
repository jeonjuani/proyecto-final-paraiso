package com.paraiso.view;

import com.paraiso.control.StationDAOJDBC;
import com.paraiso.model.Station;
import java.util.List;
import java.io.IOException;
import java.util.HashSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "StationServlet", urlPatterns = {"/StationServlet"})
public class StationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "admin":
                    this.admin(request, response);
                    break;
                case "adminAddStation":
                    this.adminAddStation(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "insertar":
                    request.setCharacterEncoding("UTF-8");
                    this.insertarEstacion(request, response);
                    break;
//                case "eliminar":
//                    this.eliminarEstacion(request, response);
//                    break;
                default:
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    protected void accionDefault(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Station> stations = new StationDAOJDBC().listar_estaciones();
        System.out.println("estaciones =" + stations);
        HttpSession sesion = request.getSession();
        sesion.setAttribute("stations", stations);

        response.sendRedirect("stations.jsp");
    }

    protected void admin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Station> stations = new StationDAOJDBC().listar_estaciones();
        System.out.println("estaciones =" + stations);
        HttpSession sesion = request.getSession();
        sesion.setAttribute("stations", stations);

        response.sendRedirect("adminStations.jsp");
    }

    protected void adminAddStation(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Station> stations = new StationDAOJDBC().listar_estaciones();
        System.out.println("estaciones =" + stations);
        HttpSession sesion = request.getSession();
        sesion.setAttribute("stations", stations);

        response.sendRedirect("addStation.jsp");
    }

    

    protected void insertarEstacion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String id_station = request.getParameter("id_station");
            String id_line = request.getParameter("id_line");
            String commercial_name = request.getParameter("commercial_name");
            String neighborhood_name = request.getParameter("neighborhood_name");
            String municipality_name = request.getParameter("municipality_name");
            int amount_of_entrances = 0;
            float build_percentage = 0;
            
            

            String build_percentageStr = request.getParameter("build_percentage");
            if (build_percentageStr != null && !"".equals(build_percentageStr)) {
                build_percentage = Float.parseFloat(build_percentageStr);
            }

            String amount_of_entrancesStr = request.getParameter("amount_of_entrances");
            if (amount_of_entrancesStr != null && !"".equals(amount_of_entrancesStr)) {
                amount_of_entrances = Integer.parseInt(amount_of_entrancesStr);
            }
            
            if (id_station == null || id_station.isEmpty()
                || id_line == null || id_line.isEmpty()
                || commercial_name == null || commercial_name.isEmpty()
                || neighborhood_name == null || neighborhood_name.isEmpty()
                || municipality_name == null || municipality_name.isEmpty()
                || build_percentageStr == null || build_percentageStr.isEmpty()
                || amount_of_entrancesStr == null || amount_of_entrancesStr.isEmpty()) {
            response.sendRedirect("errorForm.jsp");
            return; 
        }

            Station station = new Station(id_station, id_line, commercial_name, build_percentage, neighborhood_name, municipality_name, amount_of_entrances);
            int registrosModificados = new StationDAOJDBC().insertar_estacion(station);
            if (registrosModificados > 0) {
                
                List<Station> stations = new StationDAOJDBC().listar_estaciones();
                
                HttpSession sesion = request.getSession();
                sesion.setAttribute("stations", stations);
                
                response.sendRedirect("adminStations.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        } catch (IOException | NumberFormatException e) {
            e.printStackTrace();
        }
    }
//        protected void eliminarEstacion(HttpServletRequest request, HttpServletResponse response)
//        throws ServletException, IOException {
//        String id_station = String.valueOf(request.getParameter("id_station"));
//        Station station = new Station(id_station);
//        int registrosModificados = new StationDAOJDBC().eliminar_estacion(station);
//            System.out.println("Ingreso a eliminar");
//        this.accionDefault(request, response);
//        }

    }


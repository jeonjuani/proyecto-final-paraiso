package com.paraiso.control;

import com.paraiso.model.Station;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class StationDAOJDBC {

    private static final String SQL_SELECT_STATION = "SELECT id_station, id_line, commercial_name, build_percentage, neighborhood_name, municipality_name, amount_of_entrances FROM station"; // Consultar estacion

    private static final String SQL_SELECT_STATION_BY_LINE = "SELECT id_station, id_line, commercial_name, build_percentage, neighborhood_name, municipality_name, amount_of_entrances FROM station WHERE id_line=?"; // Consultar estación según linea

    private static final String SQL_INSERT_STATION = "INSERT INTO station(id_station, id_line, commercial_name, build_percentage, neighborhood_name, municipality_name, amount_of_entrances) VALUES (?,?,?,?,?,?,?)"; // Insertar nueva estación

    private static final String SQL_EDIT_STATION_STATUS = "UPDATE station SET status_percentage=?, amount_of_stations=? WHERE id_line=?"; // Actualizar estado de construcción de la estación

    private static final String SQL_DELETE_STATION = "DELETE FROM station WHERE id_station=?"; // Eliminar estación por su id

    public List<Station> listar_estaciones() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Station station = null;

        List<Station> stations = new ArrayList<Station>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT_STATION);
            rs = stmt.executeQuery();

            while (rs.next()) {
                String id_line = rs.getString("id_line");
                String id_station = rs.getString("id_station");
                String commercial_name = rs.getString("commercial_name");
                float build_percentage = rs.getFloat("build_percentage");
                String neighborhood_name = rs.getString("neighborhood_name");
                String municipality_name = rs.getString("municipality_name");
                int amount_of_entrances = rs.getInt("amount_of_entrances");

                stations.add(new Station(id_station, id_line, commercial_name, build_percentage, neighborhood_name, municipality_name, amount_of_entrances));

            }
            System.out.println(stations);
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.Close(rs);
            Conexion.Close(stmt);
            Conexion.Close(conn);
        }

        return stations;
    }

    public Station buscar_estacion(Station station) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        List<Station> stations = new ArrayList<Station>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT_STATION_BY_LINE);
            stmt.setString(1, station.getId_line());

            rs = stmt.executeQuery();

            rs.next();
            String id_line = rs.getString("id_line");
            String id_station = rs.getString("id_station");
            String commercial_name = rs.getString("commercial_name");
            float build_percentage = rs.getFloat("build_percentage");
            String neighborhood_name = rs.getString("neighborhood_name");
            String municipality_name = rs.getString("municipality_name");
            int amount_of_entrances = rs.getInt("amount_of_entrances");

            station.setId_line(id_line);
            station.setId_station(id_station);
            station.setCommercial_name(commercial_name);
            station.setBuild_percentage(build_percentage);
            station.setNeighborhood_name(neighborhood_name);
            station.setMunicipality_name(municipality_name);
            station.setAmount_of_entrances(amount_of_entrances);

        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.Close(rs);
            Conexion.Close(stmt);
            Conexion.Close(conn);
        }

        return station;
    }

    public int insertar_estacion(Station station) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_INSERT_STATION);
            stmt.setString(1, station.getId_station());
            stmt.setString(2, station.getId_line());
            stmt.setString(3, station.getCommercial_name());
            stmt.setFloat(4, station.getBuild_percentage());
            stmt.setString(5, station.getNeighborhood_name());
            stmt.setString(6, station.getMunicipality_name());
            stmt.setInt(7, station.getAmount_of_entrances());

            rows = stmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.Close(stmt);
            Conexion.Close(conn);
        }
        return rows;
    }

    public int actualizar_estado_estacion(Station station) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_EDIT_STATION_STATUS);
            stmt.setString(1, station.getId_station());
            stmt.setString(2, station.getId_line());
            stmt.setString(3, station.getCommercial_name());
            stmt.setFloat(4, station.getBuild_percentage());
            stmt.setString(5, station.getNeighborhood_name());
            stmt.setString(6, station.getMunicipality_name());
            stmt.setInt(7, station.getAmount_of_entrances());

            rows = stmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.Close(stmt);
            Conexion.Close(conn);
        }
        return rows;
    }

    public int eliminar_estacion(Station station) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_DELETE_STATION);
            stmt.setString(1, station.getId_station());
            rows = stmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.Close(stmt);
            Conexion.Close(conn);
        }
        return rows;
    }

    public boolean validarLlaveForanea(String idLine) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        boolean existeLlaveForanea = false;

        try {
            // Establecer la conexión a la base de datos
            conn = Conexion.getConnection();

            // Preparar la consulta SQL para buscar el ID de línea en la tabla "line"
            String sql = "SELECT COUNT(*) FROM line WHERE id_line = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, idLine);

            // Ejecutar la consulta y obtener el resultado
            rs = stmt.executeQuery();

            // Verificar si existe una fila con el ID de línea especificado
            if (rs.next()) {
                int count = rs.getInt(1);
                existeLlaveForanea = (count > 0);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Manejo de excepciones en caso de error de conexión o consulta
        } finally {
            // Cerrar los recursos utilizados
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
                // Manejo de excepciones en caso de error al cerrar los recursos
            }
            
        }
        return existeLlaveForanea;
    }
    
    public boolean validarClaveUnicaIdStation(String idStation) {
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    boolean existeClaveUnica = false;

    try {
        conn = Conexion.getConnection();

        // Preparar la consulta SQL para buscar la existencia de la clave única en la tabla "station"
        String sql = "SELECT COUNT(*) FROM station WHERE id_station = ?";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, idStation);

        rs = stmt.executeQuery();

        if (rs.next()) {
            int count = rs.getInt(1);
            existeClaveUnica = (count > 0);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) {
                rs.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    return existeClaveUnica;
}

    
}
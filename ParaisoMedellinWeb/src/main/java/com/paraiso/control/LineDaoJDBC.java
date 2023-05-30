package com.paraiso.control;

import com.paraiso.model.Line;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class LineDaoJDBC {
    private static final String SQL_SELECT_LINE="SELECT id_line, official_name, status_percentage, length_in_km, type, amount_of_stations FROM line"; // Consultar línea
    
    private static final String SQL_SELECT_LINE_BY_ID="SELECT id_line, official_name, status_percentage, length_in_km, type, amount_of_stations FROM line WHERE id_line=?"; // Consultar línea
    
    private static final String SQL_INSERT_LINE="INSERT INTO line(id_line, official_name, status_percentage, length_in_km, type, amount_of_stations) VALUES (?,?,?,?,?,?)"; // Insertar nueva línea
    
    private static final String SQL_EDIT_LINE_STATUS="UPDATE line SET status_percentage=?, amount_of_stations=? WHERE id_line=?"; // Actualizar estado de construcción de la línea
    
    private static final String SQL_DELETE_LINE="DELETE FROM line WHERE id_line=?"; // Eliminar línea
    
    public List<Line> listar_linea(){
        Connection conn=null;
        PreparedStatement stmt=null;
        ResultSet rs=null;
        Line line=null;
        
        List<Line> lines = new ArrayList<Line>();
        
        try{
            conn=Conexion.getConnection();
            stmt=conn.prepareStatement(SQL_SELECT_LINE);
            rs=stmt.executeQuery();
            
            while(rs.next()){
                String id_line=rs.getString("id_line");
                String official_name=rs.getString("official_name");
                float status_percentage=rs.getFloat("status_percentage");
                float length_in_km=rs.getFloat("length_in_km");
                String type=rs.getString("type");
                int amount_of_stations=rs.getInt("amount_of_stations");

                lines.add(new Line(id_line, official_name, status_percentage, length_in_km, type, amount_of_stations));
                
            }
            System.out.println(lines);
        } catch(Exception e){
            e.printStackTrace(System.out);
        } finally {
            Conexion.Close(rs);
            Conexion.Close(stmt);
            Conexion.Close(conn);
        }
        
        return lines;
    }
    
    public Line buscar_linea(Line line){
        Connection conn=null;
        PreparedStatement stmt=null;
        ResultSet rs=null;
        List<Line> lines = new ArrayList<Line>();
        
        try{
            conn=Conexion.getConnection();
            stmt=conn.prepareStatement(SQL_SELECT_LINE_BY_ID);
            stmt.setString(1,line.getId_line());
            
            rs=stmt.executeQuery();
            
            rs.next();
                String id_line=rs.getString("id_line");
                String official_name=rs.getString("official_name");
                float status_percentage=rs.getFloat("status_percentage");
                float length_in_km=rs.getFloat("length_in_km");
                String type=rs.getString("type");
                int amount_of_stations=rs.getInt("amount_of_stations"); 
                
                line.setId_line(id_line);
                line.setOfficial_name(official_name);
                line.setStatus_percentage(status_percentage);
                line.setLength_in_km(length_in_km);
                line.setType(type);
                line.setAmount_of_stations(amount_of_stations);
            
                
        } catch(Exception e){
            e.printStackTrace(System.out);
        } finally {
            Conexion.Close(rs);
            Conexion.Close(stmt);
            Conexion.Close(conn);
        }
        
        return line;
    }
    
    public int insertar_linea(Line line){
        Connection conn=null;
        PreparedStatement stmt=null;
        int rows=0;
        
        try{
            conn=Conexion.getConnection();
            stmt=conn.prepareStatement(SQL_INSERT_LINE);
            stmt.setString(1,line.getId_line());
            stmt.setString(2,line.getOfficial_name());
            stmt.setFloat(3,line.getStatus_percentage());
            stmt.setFloat(4,line.getLength_in_km());
            stmt.setString(5,line.getType());
            stmt.setInt(6,line.getAmount_of_stations());
            
            rows=stmt.executeUpdate();
                       
                
        } catch(Exception e){
            e.printStackTrace(System.out);
        } finally {
            Conexion.Close(stmt);
            Conexion.Close(conn);
        }
        return rows;
    }
    
    public int actualizar_estado_linea(Line line){
        Connection conn=null;
        PreparedStatement stmt=null;
        int rows=0;
        
        try{
            conn=Conexion.getConnection();
            stmt=conn.prepareStatement(SQL_EDIT_LINE_STATUS);
            stmt.setString(1,line.getId_line());
            stmt.setString(2,line.getOfficial_name());
            stmt.setFloat(3,line.getStatus_percentage());
            stmt.setFloat(4,line.getLength_in_km());
            stmt.setString(5,line.getType());
            stmt.setInt(6,line.getAmount_of_stations());
            
            rows=stmt.executeUpdate();
                       
                
        } catch(Exception e){
            e.printStackTrace(System.out);
        } finally {
            Conexion.Close(stmt);
            Conexion.Close(conn);
        }
        return rows;
    }
    public int eliminar_linea(Line line){
        Connection conn=null;
        PreparedStatement stmt=null;
        int rows=0;
        
        try{
            conn=Conexion.getConnection();
            stmt=conn.prepareStatement(SQL_DELETE_LINE);
            stmt.setString(1,line.getId_line());            
            rows=stmt.executeUpdate();
                       
                
        } catch(Exception e){
            e.printStackTrace(System.out);
        } finally {
            Conexion.Close(stmt);
            Conexion.Close(conn);
        }
        return rows;
    }
    
    public static void main(String[] args) {
        LineDaoJDBC line = new LineDaoJDBC();
        line.listar_linea();
    }
}
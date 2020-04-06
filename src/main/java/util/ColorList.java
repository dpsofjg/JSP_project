package util;

import entities.Color;
import org.json.JSONArray;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ColorList {
    public static JSONArray jsonArray = new JSONArray(getColorList());

    public static List<Color> getColorList() {
        Connection con;
        Color color;
        List<Color> colorList = new ArrayList<>();
        try {
            Class.forName("org.hsqldb.jdbcDriver");
            con = DriverManager.getConnection("jdbc:hsqldb:file:D:/DB/colors", "sa", "");
            if (con != null) {
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM tsveta");
                while (rs.next()) {
                    String color_number = rs.getString("color_number");
                    String name = rs.getString("name");
                    color = new Color(color_number, name);
                    colorList.add(color);
                }
                rs.close();
                stmt.close();
                con.close();
            } else {
                System.out.println("Problem with creating connection");
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return colorList;
    }
}

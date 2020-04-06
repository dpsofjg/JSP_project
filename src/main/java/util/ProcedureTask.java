package util;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Types;

public class ProcedureTask {
    public static String getProcedure(String s) throws SQLException {
        Connection conn = null; // = myConnection
        CallableStatement proc = null;
        String result;

        try {
            proc = conn.prepareCall("{? = call get_info(?) }");
            proc.registerOutParameter(1, Types.VARCHAR);
            proc.setString(2, s);
            proc.execute();

            result = proc.getString(1);

        } finally {
            try {
                proc.close();
            } catch (SQLException e) {
            }
            conn.close();
        }
        return result;
    }
}



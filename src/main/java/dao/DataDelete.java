package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DataDelete {
    public static int deleteData(String eid){
        try{
            String query = "DELETE FROM TBL_EMP_DETAILS WHERE EID=?";
            Connection con = DatabaseConnect.connect();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1,Integer.valueOf(eid));
            return ps.executeUpdate();
        }
        catch (Exception e)
        {
            return 0;
        }
    }
}

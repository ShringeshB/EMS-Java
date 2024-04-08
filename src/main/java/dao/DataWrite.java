package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DataWrite {
    public static int setData(
            String eid,
            String first,
            String last,
            String gender,
            String dob,
            String email,
            String pass,
            String mobile,
            String city,
            String state
    )
    {
        try {
            Connection con = DatabaseConnect.connect();
            String query = "INSERT INTO TBL_EMP_DETAILS (EID,FIRST_NAME,LAST_NAME,GENDER,DOB,PASSWRD,EMAIL,MOBILE,CITY,STATE) VALUES (?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1,Integer.valueOf(eid));
            ps.setString(2,first);
            ps.setString(3,last);
            ps.setString(4,gender);
            ps.setString(5,dob);
            ps.setString(6,pass);
            ps.setString(7,email);
            ps.setLong(8,Long.valueOf(mobile));
            ps.setString(9,city);
            ps.setString(10,state);
            return ps.executeUpdate();
            }
        catch (Exception e)
        {
            System.out.println(e);
            return 0;
        }
    }

    public static void main(String[] args) {
        int res = DataWrite.setData("12345","jon","jas","m","asdf","asdfa","2afd","343434","asdf","stae");
        System.out.println(res);
    }
}

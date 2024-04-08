package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DataEdit {
    public static int editData(
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
            String query = "UPDATE TBL_EMP_DETAILS SET FIRST_NAME=?,LAST_NAME=?,GENDER=?,DOB=?,PASSWRD=?,EMAIL=?,MOBILE=?,CITY=?,STATE=? WHERE EID=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(10,Integer.valueOf(eid));
            ps.setString(1,first);
            ps.setString(2,last);
            ps.setString(3,gender);
            ps.setString(4,dob);
            ps.setString(5,pass);
            ps.setString(6,email);
            ps.setLong(7,Long.valueOf(mobile));
            ps.setString(8,city);
            ps.setString(9,state);
            return ps.executeUpdate();
        }
        catch (Exception e) {
            System.out.println(e);
            return 0;
        }
    }

    public static void main(String[] args) {
        int res = editData("7001","jon","jas","m","asdf","a@gmail.com","2afd","343434","asdf","stae");
        System.out.println(res);
    }
}

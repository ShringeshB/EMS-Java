package dao;

import java.sql.*;
import java.util.ArrayList;

public class DataAccess {
    public static ArrayList<ArrayList<String>> getData()
    {
        ArrayList<ArrayList<String>> al = new ArrayList<>();
        try {
            Connection con = DatabaseConnect.connect();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from tbl_emp_details");
            while (rs.next()) {
                System.out.println(rs.getString(1));
                al.add(new ArrayList<>());
                al.get(al.size()-1).add(rs.getString(1));
                al.get(al.size()-1).add(rs.getString(2));
                al.get(al.size()-1).add(rs.getString(3));
                al.get(al.size()-1).add(rs.getString(4));
                al.get(al.size()-1).add(rs.getString(5));
                al.get(al.size()-1).add(rs.getString(6));
                al.get(al.size()-1).add(rs.getString(7));
                al.get(al.size()-1).add(rs.getString(8));
                al.get(al.size()-1).add(rs.getString(9));
                al.get(al.size()-1).add(rs.getString(10));

            }
            con.close();
        }
        catch (Exception e)
        {
            System.out.println(e);
        }

        return al;
    }

    public static void main(String[] args) {
        getData();
    }
}

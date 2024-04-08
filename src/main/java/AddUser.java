import dao.DataWrite;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddUser", value = "/AddUser")
public class AddUser extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

          String eid = request.getParameter("eid");
          String first = request.getParameter("first");
          String last =request.getParameter("last");
          String gender =request.getParameter("gender");
          String dob =request.getParameter("dob");
          String email =request.getParameter("userEmail");
          String password =request.getParameter("userPass");
          String mobile =request.getParameter("mobile");
          String city =request.getParameter("city");
          String state =request.getParameter("state");

        int res = DataWrite.setData(eid,first,last,gender,dob,email,password,mobile,city,state);
        PrintWriter out = response.getWriter();
        out.println("<script>");
        if(res==1)
            out.println("alert(\"Successfully Added New Employee\")");
        else
            out.println("alert(\"Something went wrong! \")");
        out.println("window.location.href = \"GetEmpDetails\"");
        out.println("</script>");
    }
}

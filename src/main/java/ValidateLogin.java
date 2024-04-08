import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ValidateLogin", value = "/ValidateLogin")
public class ValidateLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String n=request.getParameter("userEmail");
        String p=request.getParameter("userPass");
        if(n.equals("admin@abc.com") && p.equals("admin123"))
            response.sendRedirect("GetEmpDetails");
        else
            response.sendRedirect("login.jsp");
    }
}

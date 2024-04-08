import dao.DataDelete;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DeleteUser", value = "/DeleteUser")
public class DeleteUser extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String eid = request.getParameter("eid");

        int res = DataDelete.deleteData(eid);

        PrintWriter out = response.getWriter();
        out.println("<script>");
        if(res==1) {
            out.println("alert(\"Successfully Deleted the Employee\");");
            out.println("window.location.href = \"GetEmpDetails\"");
        }
        else {
            out.println("alert(\"Something went wrong\");");
            out.println("window.location.href = \"delete.jsp\"");
        }
        out.println("</script>");
    }
}

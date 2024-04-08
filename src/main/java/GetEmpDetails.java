import bean.DetailsBean;
import dao.DataAccess;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "GetEmpDetails", value = "/GetEmpDetails")
public class GetEmpDetails extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        ArrayList<ArrayList<String>> al= DataAccess.getData();
        DetailsBean.clearList();
        for(int i=0;i< al.size();i++)
        {
            DetailsBean.setList(al.get(i));
        }

        //write to java bean
        response.sendRedirect("dashboard.jsp");

    }
}

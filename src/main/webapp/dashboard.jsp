<%@ include file="header.jsp" %>
<div class="mt-3">
    <h2 class="text-decoration-underline">Dashboard</h2>
    <div class="d-flex flex-row justify-content-end">
        <button type="button" class="btn btn-primary pr-3 pl-3 me-3">
            <a href="/EMS-1.0-SNAPSHOT/new.jsp" class="text-decoration-none text-white">New +</a>
        </button>
        <button type="button" class="btn btn-primary pr-3 pl-3 me-3">
            <a href="/EMS-1.0-SNAPSHOT/delete.jsp" class="text-decoration-none text-white">Delete</a>
        </button>
    </div>

<div class="mt-3">
<table class="table">
    <thead>
    <tr>
        <th scope="col">S.No.</th>
        <th scope="col">EID</th>
        <th scope="col">First Name</th>
        <th scope="col">Last Name</th>
        <th scope="col">Gender</th>
        <th scope="col">DOB</th>
        <th scope="col">Email</th>
        <th scope="col">Mobile</th>
        <th scope="col">City</th>
        <th scope="col">State</th>
    </tr>
    </thead>
    <tbody>
    <jsp:useBean id="obj" class="bean.DetailsBean" />
    <%
        if(obj.getList()==null) {
            RequestDispatcher rd=request.getRequestDispatcher("GetEmpDetails");
            rd.forward(request,response);
        }
        for(int i=0;i<obj.getList().size();i++) {
            out.println("<tr>");
                out.println("<th scope=\"row\">" + (i+1) + "</th>");
                out.println("<td>"+obj.getList().get(i).get(0)+"</td>");
                out.println("<td>"+obj.getList().get(i).get(1)+"</td>");
                out.println("<td>"+obj.getList().get(i).get(2)+"</td>");
                out.println("<td>"+obj.getList().get(i).get(3)+"</td>");
                out.println("<td>"+obj.getList().get(i).get(4)+"</td>");
                out.println("<td>"+obj.getList().get(i).get(6)+"</td>");
                out.println("<td>"+obj.getList().get(i).get(7)+"</td>");
                out.println("<td>"+obj.getList().get(i).get(8)+"</td>");
                out.println("<td>"+obj.getList().get(i).get(9)+"</td>");
                out.println("<td><a href=\"/EMS-1.0-SNAPSHOT/edit.jsp?eid="+obj.getList().get(i).get(0)+"\">Edit</a></td>");
            out.print("</tr>");
        }
    %>
    </tbody>
</table>
</div>
</div>
<%@ include file="footer.jsp" %>

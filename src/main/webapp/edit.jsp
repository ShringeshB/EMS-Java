<%@ include file="header.jsp" %>
<div class="mt-3 pb-3">
  <h2 class="text-decoration-underline">Edit Employee</h2>
  <%! String eid = ""; %>
  <%! String first =""; %>
  <%! String last =""; %>
  <%! String gender =""; %>
  <%! String dob =""; %>
  <%! String email =""; %>
  <%! String password =""; %>
  <%! String mobile =""; %>
  <%! String city =""; %>
  <%! String state =""; %>

  <jsp:useBean id="obj" class="bean.DetailsBean" />
  <%
    String query = request.getParameter("eid");
    for(int i=0;i<obj.getList().size();i++)
    {
      for(int j=0;j<obj.getList().get(i).size();j++)
      {
        if(obj.getList().get(i).get(j).equals(query))
        {
          eid = obj.getList().get(i).get(0);
          first = obj.getList().get(i).get(1);
          last = obj.getList().get(i).get(2);
          gender = obj.getList().get(i).get(3);
          dob = obj.getList().get(i).get(4);
          password = obj.getList().get(i).get(5);
          email = obj.getList().get(i).get(6);
          mobile = obj.getList().get(i).get(7);
          city = obj.getList().get(i).get(8);
          state = obj.getList().get(i).get(9);
        }
      }
    }
  %>
  <div class="w-25 pt-2">
    <form method="post" action="EditUser">
      <div class="mb-3">
        <label for="eid" class="form-label">EID</label>
        <input type="number" class="form-control" id="eid" value="<%=eid%>" disabled>
        <input name="eid" value="<%=eid%>" hidden>
      </div>
      <div class="mb-3">
        <label for="first" class="form-label">First Name</label>
        <input type="text" class="form-control" id="first" name="first" value="<%=first%>">
      </div>
      <div class="mb-3">
        <label for="last" class="form-label">Last Name</label>
        <input type="text" class="form-control" id="last" name="last" value="<%=last%>">
      </div>
      <div class="mb-3">
        <label for="gender" class="form-label">Gender</label>
        <input type="text" class="form-control" id="gender" name="gender" value="<%=gender%>">
      </div>
      <div class="mb-3">
        <label for="dob" class="form-label">Date of Birth</label>
        <input type="text" class="form-control" id="dob" name="dob" value="<%=dob%>">
      </div>
      <div class="mb-3">
        <label for="emailinput" class="form-label">Email address</label>
        <input type="email" class="form-control" id="emailinput" name="userEmail" value="<%=email%>">
      </div>
      <div class="mb-3">
        <label for="passinput" class="form-label">Password</label>
        <input type="password" class="form-control" id="passinput" name="userPass" value="<%=password%>">
      </div>
      <div class="mb-3">
        <label for="mobile" class="form-label">Mobile Number</label>
        <input type="number" class="form-control" id="mobile" name="mobile" value="<%=mobile%>">
      </div>
      <div class="mb-3">
        <label for="city" class="form-label">City</label>
        <input type="text" class="form-control" id="city" name="city" value="<%=city%>">
      </div>
      <div class="mb-3">
        <label for="state" class="form-label">State</label>
        <input type="text" class="form-control" id="state" name="state" value="<%=state%>">
      </div>
      <button type="submit" class="btn btn-primary">Edit</button>
    </form>
  </div>
</div>
<%@ include file="footer.jsp" %>

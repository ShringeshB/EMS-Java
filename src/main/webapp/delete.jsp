<%@ include file="header.jsp" %>
<div class="mt-3 pb-3">
  <h2 class="text-decoration-underline">Delete Employee</h2>
  <div class="w-25 pt-2">
    <form method="post" action="DeleteUser">
      <div class="mb-3">
        <label for="eid" class="form-label">Enter the EID to delete</label>
        <input type="number" class="form-control" id="eid" name="eid">
      </div>
      <button type="submit" class="btn btn-primary">Delete</button>
    </form>
  </div>
</div>
<%@ include file="footer.jsp" %>

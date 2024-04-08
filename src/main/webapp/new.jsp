<%@ include file="header.jsp" %>
<div class="mt-3 pb-3">
    <h2 class="text-decoration-underline">Add New Employee</h2>
    <div class="w-25 pt-2">
        <form method="post" action="AddUser">
            <div class="mb-3">
                <label for="eid" class="form-label">EID</label>
                <input type="number" class="form-control" id="eid" name="eid">
            </div>
            <div class="mb-3">
                <label for="first" class="form-label">First Name</label>
                <input type="text" class="form-control" id="first" name="first">
            </div>
            <div class="mb-3">
                <label for="last" class="form-label">Last Name</label>
                <input type="text" class="form-control" id="last" name="last">
            </div>
            <div class="mb-3">
                <label for="gender" class="form-label">Gender</label>
                <input type="text" class="form-control" id="gender" name="gender">
            </div>
            <div class="mb-3">
                <label for="dob" class="form-label">Date of Birth</label>
                <input type="text" class="form-control" id="dob" name="dob">
            </div>
            <div class="mb-3">
                <label for="emailinput" class="form-label">Email address</label>
                <input type="email" class="form-control" id="emailinput" name="userEmail">
            </div>
            <div class="mb-3">
                <label for="passinput" class="form-label">Password</label>
                <input type="password" class="form-control" id="passinput" name="userPass">
            </div>
            <div class="mb-3">
                <label for="mobile" class="form-label">Mobile Number</label>
                <input type="number" class="form-control" id="mobile" name="mobile">
            </div>
            <div class="mb-3">
                <label for="city" class="form-label">City</label>
                <input type="text" class="form-control" id="city" name="city">
            </div>
            <div class="mb-3">
                <label for="state" class="form-label">State</label>
                <input type="text" class="form-control" id="state" name="state">
            </div>
            <button type="submit" class="btn btn-primary">Create</button>
        </form>
    </div>
</div>
<%@ include file="footer.jsp" %>

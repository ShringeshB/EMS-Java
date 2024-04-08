<%@ include file="header.jsp" %>
        <div class="w-25 pt-5">
                <h2 class="fw-bold pb-2">Login</h2>
                <form method="post" action="ValidateLogin">
                    <div class="mb-3">
                        <label for="emailinput" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="emailinput" name="userEmail">
                    </div>
                    <div class="mb-3">
                        <label for="passinput" class="form-label">Password</label>
                        <input type="password" class="form-control" id="passinput" name="userPass">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
<%@ include file="footer.jsp" %>

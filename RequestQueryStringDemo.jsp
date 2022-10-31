<html>
<head>
    <title>Request getQueryString Demo</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>

<body>

    <div class="container bg-light">
        <div class="header">
            <div class="row">
                <div class="col-md-8">
                    <h2>Request: a predefined JSP variable, specifically request.getQueryString</h2>
                    <h2>Description</h2>
                    <p class="text-success">Official Oracle Definition:</p>
                    <p>
                        Returns the query string that is contained in the request URL after the path.<br />
                        This method returns <i>null</i> if the URL does not have a query string.
                    </p>
                </div>
                <div class="col-md-4">
                    <p>
                        <br />
                        <a href="index.jsp">Home</a><br />
                        <a href="RequestQueryStringDemo.jsp">Refresh Page</a>
                    </p>
                </div>
            </div>
            <hr>
        </div>
        <div class="main">
            <p>An example of a simple form with the 'get' method. This will return what you enter based on the following:</p>
            <%-- code block of form --%>
            <div class="row">
                <div class="col-md-6">
                    <ul>
                        <li>Using the <code>request.getParameter()</code> method</li>
                        <li>Using the <code>request.getQueryString()</code> method</li>
                    </ul>
                    <div class="form">
                        <form action="" method="get">
                            <div class="form-group">
                                <label for="exampleInput">Simple Form</label>
                                <input name="exampleInput" type="text" class="form-control"
                                       id="exampleInput" placeholder="Enter a Word">
                            </div>
                            <!-- Submit  -->
                            <button class="btn btn-primary" type="submit">Submit</button>
                        </form>
                    </div>
                    <p>Results from <code>request.getParameter()</code>:
                        <span class="text-primary"><%=request.getParameter("exampleInput")%></span>
                    </p>
                    <p>Results from <code>request.getQueryString()</code>:
                        <span class="text-success"><%=request.getQueryString()%></span>
                    </p>
                </div>
                <div class="col-md-6">
                    <img class="img-fluid" src="images/formExample.png" alt="HTML code of a simple form"/>
                </div>
            </div>
            <div class="row">
                <p class="col-md-6">
                    *Notice the change in the url?<br />
                    If you typed <span class="text-danger">sample1</span> in the form, the result would look like this:<br/>
                    <img class="img-fluid" src="images/urlExample.png" alt="URL example with parameter highlighted"/>
                </p>
                <div class="col-md-6">
                    <h2>Best Practices</h2>
                    <p>TBD</p>
                    <h2>Drawbacks</h2>
                    <p>TBD</p>
                </div>
            </div>
            <hr>
        </div> <%-- end of main --%>

        <div class="footer">
            <h2>Resources</h2>
            <ul>
                <li><a href="https://tomcat.apache.org/tomcat-7.0-doc/servletapi/javax/servlet/http/HttpServletRequest.html#getQueryString()">
                        tomcat.apache.org</a>
                </li>
                <li>
                    <a href="https://docs.oracle.com/javaee/6/api/javax/servlet/http/HttpServletRequest.html#getQueryString()">
                        Oracle documents</a>
                </li>
            </ul>


        </div>

    </div>
</body>
</html>
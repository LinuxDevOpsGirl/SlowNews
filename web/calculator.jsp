<%@ page import="com.github.mykhalechko.slownews.logic.Calculator" %><%--
  Created by IntelliJ IDEA.
  User: vector
  Date: 11.06.2016
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
</head>
<body>

<div class="container">
    <div class="content">
        <header>Центральная колонка</header>
        <div class="content-text">
            <div class="calc">
                <form name="calculation.jsp" method="GET">
                    <p>

                        <input type="radio" name="operation" value="add" checked>addition<br>
                        <input type="radio" name="operation" value="sub">subtraction<br>
                        <input type="radio" name="operation" value="mult">multiplication<br>
                        <input type="radio" name="operation" value="div">division<br>


                    </p>
                    <p>
                        <label for="first">Первое число</label> <input type="text" id="first"
                                                                       name="first">
                    </p>
                    <p>
                        <label for="second">Второе число</label> <input type="text" id="second"
                                                                        name="second">
                    </p>
                    <p>
                        <input type="submit" name="sumbit" value="Отправить">
                    </p>
                </form>
                <p>
                        <% try {
    request.getCharacterEncoding();
    String operation = request.getParameter("operation");
    double first = Double.parseDouble(request.getParameter("first"));
    double second = Double.parseDouble(request.getParameter("second"));
    try {
        double result = new Calculator().getResult(operation, first, second); %>
                                <%=result%><%--response.getWriter().println("<h1>" + result + "</h1>");--%>
                                <%

    } catch (ArithmeticException e) { %>
                                <%="division by zero"%>
                            <%--response.getWriter().println("<h1>division by zero</h1>");--%>

    }
} catch (NumberFormatException e) {
    response.getWriter().println("<h1>invalid number format</h1>");
}
%>
            </div>
            </p>
        </div>
    </div>
    <div class="left-column">
        <h3 class="menu-title">Меню</h3>
        <nav class="menu">
            <ul>
                <li><a href="index.html">Index</a></li>
                <li><a href="calculation.html">Calculation</a></li>
                <li><a href="404.html">404</a></li>
            </ul>
        </nav>
    </div>
    <div class="right-column">
        <p>
            Правая
        </p>
    </div>
</div>

</body>


</html>
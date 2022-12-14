<%-- 
    Document   : chamcong
    Created on : Aug 18, 2022, 3:03:57 PM
    Author     : kienb
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/style.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div id="body">
            <jsp:useBean id="dt" class="utils.DateHelper"/>
            <div>
                <form action="chamcong" method="post" id="form">
                    <div id="label-title">Chọn Tháng Muốn Xuất Bảng Chấm Công </div>
                    <input type="month" class="month" name="date">
                    <br>
                    <input type="submit" value="Search" class="sendData">
                </form>
            </div>
            <c:if test="${requestScope.month != null and requestScope.year != null}">
                <div style="margin: 2% 0%; font-size: larger;color: blueviolet;text-align: center">Bảng Lưong Tháng ${requestScope.month} Năm ${requestScope.year}</div>
            </c:if>
            <div style="text-align: center;font-size: larger; color: red">${requestScope.error}</div>
            <c:if test="${requestScope.list!= null}">
                <div class="infor">
                    <table border="1" style="border-collapse: collapse">
                        <thead>
                            <tr>

                                <th rowspan="3">Mã Nhân Viên</th>
                                <th rowspan="3">Họ Tên</th>
                                <th rowspan="3">Vị Trí</th>
                                <th colspan="${requestScope.dates.size()}">Ngày trong tháng, thứ trong tuần</th>
                                <th rowspan="3">Tổng cộng</th>
                            </tr>
                            <tr>
                                <c:forEach items="${requestScope.dates}" var="d">
                                    <th>
                                        <fmt:formatDate pattern = "dd" 
                                                        value = "${d}" /> 
                                    </th>
                                </c:forEach>
                            </tr>
                            <tr>
                                <c:forEach items="${requestScope.dates}" var="d">
                                    <th>
                                        <fmt:formatDate pattern="E" 
                                                        value = "${d}" /> 
                                    </th>
                                </c:forEach>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.list}" var="i">
                                <c:if test="${i.totalWorking() != 0}">
                                    <tr>
                                        <td>${i.id}</td>
                                        <td>${i.emp_name}</td>
                                        <td>${i.position}</td>
                                        <c:forEach items="${requestScope.dates}" var="d">
                                            <td>
                                                <c:forEach items="${i.list_workingtime}" var="t">
                                                    <c:if test="${t eq d}">
                                                        1
                                                    </c:if>
                                                </c:forEach>
                                                <c:forEach items="${i.list_leave}" var="u">
                                                    <c:if test="${u eq d}">
                                                        CP
                                                    </c:if>
                                                </c:forEach>
                                            </td>
                                        </c:forEach>   
                                        <td>${i.totalWorking()}</td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:if>
            <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

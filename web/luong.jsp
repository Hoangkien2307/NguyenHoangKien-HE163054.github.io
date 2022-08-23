<%-- 
    Document   : luong.jsp
    Created on : Aug 18, 2022, 2:14:40 PM
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
                <div>
                    <form action="displaySalary" method="POST" id="form">
                        <div id="label-title">Chọn Tháng Muốn Xuất Bảng Lương </div>
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
                                <th rowspan="2">Mã Nhân Viên</th>
                                <th rowspan="2">Họ Và Tên</th>
                                <th rowspan="2">Chức Vụ</th>
                                <th rowspan="2">Mức lương cơ bản</th>
                                <th rowspan="2">Luong bao hiem</th>
                                <th rowspan="2">Mức lương/ ngày công</th>
                                <th colspan="2">Lương sản xuất</th>
                                <th colspan="2">Phụ cấp</th>
                                <th colspan="2">Lương thêm giờ</th>
                                <th colspan="4">Bảo hiểm</th>
                                <th rowspan="2">Tổng lương thực lĩnh</th>
                            </tr>
                            <tr>
                                <th>Số công</th>
                                <th>Tiền lương SX</th>
                                <th>Trách nhiệm</th>
                                <th>điện thoại</th>
                                <th>Số giờ</th>
                                <th>Tiền lương thêm giờ</th>
                                <th>BHXH</th>
                                <th>BHYT</th>
                                <th>BHTN</th>
                                <th>KPCD</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.list}" var="i">
                                <c:if test="${i.totalWorking() != 0}">
                                    <tr>
                                        <td>${i.id}</td>
                                        <td>${i.emp_name}</td>
                                        <td>${i.position}</td>
                                        <td><fmt:formatNumber type="number" maxFractionDigits="0" value="${i.base_salary}"/></td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${i.ins_salary != 0}">
                                                    <fmt:formatNumber type="number" maxFractionDigits="0" value="${i.ins_salary}"/>
                                                </c:when>
                                            </c:choose>
                                        </td>
                                        <td><fmt:formatNumber type="number" maxFractionDigits="0" value="${i.base_salary/26}"/></td>
                                        <td>${i.totalWorking()}</td>
                                        <jsp:useBean id="b" class="utils.DateHelper"/>
                                        <td><c:choose>
                                                <c:when test="${i.isManager eq false}">
                                                    <fmt:formatNumber type="number" maxFractionDigits="0" value="${i.base_salary/26 * i.totalWorking()}"/>
                                                </c:when>
                                                <c:otherwise>
                                                    <fmt:formatNumber type="number" maxFractionDigits="0" value="${i.base_salary/b.getDaysOfMonths(requestScope.year,requestScope.month) * i.totalWorking()}"/>
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <c:forEach items="${i.list_allow}" var="a">
                                                <c:if test="${a.id == 1}">
                                                    <fmt:formatNumber type="number" maxFractionDigits="0" value="${a.money}"/>
                                                </c:if>
                                            </c:forEach>
                                        </td>
                                        <td>
                                            <c:forEach items="${i.list_allow}" var="a">
                                                <c:if test="${a.id == 2}">
                                                    <fmt:formatNumber type="number" maxFractionDigits="0" value="${a.money}"/>
                                                </c:if>
                                            </c:forEach>
                                        </td>
                                        <td>
                                            <c:if test="${i.totalHoursOvertime()!=0}">
                                                <fmt:formatNumber type="number" maxFractionDigits="1" minFractionDigits="0" value="${i.totalHoursOvertime()}"/>
                                            </c:if>
                                        </td>
                                        <td>
                                            <c:if test="${i.totalHoursOvertime()!=0}">
                                                <fmt:formatNumber type="number" maxFractionDigits="0" value="${i.totalHoursOvertime() * i.base_salary/26 * 1.5/8}"/>
                                            </c:if> 
                                        </td>
                                        <td>
                                            <c:forEach items="${i.list_ins}" var="a">
                                                <c:if test="${a.id == 1}">
                                                    <fmt:formatNumber type="number" maxFractionDigits="0" value="${a.percent * i.ins_salary}"/>
                                                </c:if>
                                            </c:forEach>
                                        </td>
                                        <td>
                                            <c:forEach items="${i.list_ins}" var="a">
                                                <c:if test="${a.id == 2}">
                                                    <fmt:formatNumber type="number" maxFractionDigits="0" value="${a.percent * i.ins_salary}"/>
                                                </c:if>
                                            </c:forEach>
                                        </td>
                                        <td>
                                            <c:forEach items="${i.list_ins}" var="a">
                                                <c:if test="${a.id == 3}">
                                                    <fmt:formatNumber type="number" maxFractionDigits="0" value="${a.percent * i.ins_salary}"/>
                                                </c:if>
                                            </c:forEach>
                                        </td>
                                        <td>
                                            <c:forEach items="${i.list_ins}" var="a">
                                                <c:if test="${a.id == 4}">
                                                    <fmt:formatNumber type="number" maxFractionDigits="0" value="${a.percent * i.ins_salary}"/>
                                                </c:if>
                                            </c:forEach>
                                        </td>
                                        <td>
                                            <fmt:formatNumber type="number" maxFractionDigits="0" value="${i.getRealSalary(requestScope.year,requestScope.month)}"/>
                                        </td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:if>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

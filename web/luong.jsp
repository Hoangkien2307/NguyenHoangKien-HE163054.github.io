<%-- 
    Document   : luong.jsp
    Created on : Aug 18, 2022, 2:14:40 PM
    Author     : kienb
--%>

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
                    <input type="submit" value="Search">
                </form>
            </div>
            <div>
                <table border="1" style="border-collapse: collapse">
                    <thead>
                        <tr>
                            <th rowspan="2">STT</th>
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
                        <tr>
                            <td>1</td>
                            <td>nv01</td>
                            <td>Lê Hoàng Anh</td>
                            <td>Trưởng Phòng Kỹ Thuật</td>
                            <td>17000000</td>
                            <td>5585000</td>
                            <td>653846</td>
                            <td>30</td>
                            <td>17000000</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>446800</td>
                            <td>83775</td>
                            <td>55850</td>
                            <td>55850</td>
                            <td>16357725</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>nv02</td>
                            <td>Nguyễn Quang Hòa</td>
                            <td>Nhân Viên Kỹ Thuật</td>
                            <td>6000000</td>
                            <td>3306300</td>
                            <td>230769</td>
                            <td>30</td>
                            <td>6923077</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>264504</td>
                            <td>49595</td>
                            <td>33063</td>
                            <td>33063</td>
                            <td>6542852</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>nv03</td>
                            <td>Hoàng Thị H.Khuyên</td>
                            <td>Kế Toán</td>
                            <td>7000000</td>
                            <td>3306300</td>
                            <td>269230</td>
                            <td>28</td>
                            <td>7538462</td>
                            <td>-</td>
                            <td>200000</td>
                            <td>-</td>
                            <td>-</td>
                            <td>264504</td>
                            <td>49595</td>
                            <td>33063</td>
                            <td>33063</td>
                            <td>7358237</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>nv04</td>
                            <td>Nguyễn Công Hương</td>
                            <td>Thủ kho</td>
                            <td>7000000</td>
                            <td>3306300</td>
                            <td>269231</td>
                            <td>30</td>
                            <td>8076923</td>
                            <td>500000</td>
                            <td>-</td>
                            <td>90</td>
                            <td>4543269</td>
                            <td>264504</td>
                            <td>49595</td>
                            <td>33063</td>
                            <td>33063</td>
                            <td>12739968</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>nv05</td>
                            <td>Phạm Thị Thu</td>
                            <td>Thủ kho</td>
                            <td>5800000</td>
                            <td>3306300</td>
                            <td>223077</td>
                            <td>28</td>
                            <td>6246154</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>264504</td>
                            <td>49595</td>
                            <td>33063</td>
                            <td>33063</td>
                            <td>5865929</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>nv06</td>
                            <td>Vũ Minh Hiếu</td>
                            <td>Thủ kho</td>
                            <td>6500000</td>
                            <td>3306300</td>
                            <td>250000</td>
                            <td>29</td>
                            <td>7250000</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>264504</td>
                            <td>49595</td>
                            <td>33063</td>
                            <td>33063</td>
                            <td>6869776</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>nv07</td>
                            <td>Phan Trần Hướng</td>
                            <td>Thủ kho</td>
                            <td>5700000</td>
                            <td>3306300</td>
                            <td>219231</td>
                            <td>30</td>
                            <td>6576923</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>264504</td>
                            <td>49595</td>
                            <td>33063</td>
                            <td>33063</td>
                            <td>6196699</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>nv08</td>
                            <td>Nguyễn Thị Cải</td>
                            <td>Thủ kho</td>
                            <td>5500000</td>
                            <td>3306300</td>
                            <td>211538</td>
                            <td>29</td>
                            <td>6134615</td>
                            <td>-</td>
                            <td>-</td>
                            <td>12</td>
                            <td>475962</td>
                            <td>264504</td>
                            <td>49595</td>
                            <td>33063</td>
                            <td>33063</td>
                            <td>6230352</td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>nv09</td>
                            <td>Ng.T Xuân Quỳnh</td>
                            <td>Thủ kho</td>
                            <td>5500000</td>
                            <td>3306300</td>
                            <td>211538</td>
                            <td>27</td>
                            <td>5711538</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>264504</td>
                            <td>49595</td>
                            <td>33063</td>
                            <td>33063</td>
                            <td>5331314</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>nv10</td>
                            <td>Lương Thị Cảnh</td>
                            <td>Thủ kho</td>
                            <td>5000000</td>
                            <td>-</td>
                            <td>192308</td>
                            <td>29</td>
                            <td>5576923</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>5576923</td>
                        </tr>
                        <tr>
                            <td>11</td>
                            <td>nv11</td>
                            <td>Tiêu Đức Hiệp</td>
                            <td>Thủ kho</td>
                            <td>4000000</td>
                            <td>-</td>
                            <td>153846</td>
                            <td>7</td>
                            <td>1076923</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>1076923</td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>
    </body>
</html>

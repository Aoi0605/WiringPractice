<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MySQL DB 查詢範例</title>
    <script type="text/javascript">
        let errMsg = '${errMsg}';
        if (errMsg != '') {
            alert(errMsg);
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>MySQL DB 查詢範例</h1>
        <form action="doQueryCity" method="post">
            <div class="form-group">
                <label for="countryCode">
                    <span style="color:red">*</span> CountryCode
                </label>
                <input type="text" id="countryCode" name="countryCode" value="${countryCode }">
            </div>
            <div class="form-group">
                <label for="district">District</label>
                <input type="text" id="district" name="district" value="${district }">
            </div>
            <input type="submit" value="送出">
        </form>
        <hr/>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>CountryCode</th>
                <th>District</th>
                <th>Population</th>
            </tr>
            <c:if test="${not empty cityRst }">
                <c:forEach items="${cityRst}" var="item">
                    <tr>
                        <td>${item.ID }</td>
                        <td>${item.Name }</td>
                        <td>${item.CountryCode }</td>
                        <td>${item.District }</td>
                        <td>${item.Population }</td>
                    </tr>
                </c:forEach>
            </c:if>
        </table>
    </div>
</body>
</html>

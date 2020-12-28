<%@ page import="util.Request" %>
<%@ page import="dao.Query" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="head.jsp" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css.css">
    <script src="js/datepicker/WdatePicker.js"></script>

    <script src="js/highcharts/highcharts.js"></script>
    <script src="js/highcharts/modules/exporting.js"></script>
    <script src="js/highcharts/modules/series-label.js"></script>
    <script src="js/highcharts/modules/oldie.js"></script>

</head>
<body>

<h3>考试统计</h3>

<%--<form action="?" method="get">
    开始日期:<input sype="text" name="kaishiriqi" value="<%=Request.get("kaishiriqi")%>"
                onclick="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})">
    结束日期:<input sype="text" name="jieshuriqi" value="<%=Request.get("jieshuriqi")%>"
                onclick="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})">
    <button type="submit">提交</button>
</form>--%>

<%
    String where = "1=1 ";
    if (!Request.get("kaishiriqi").equals("")) {
        where += " and addtime>='" + Request.get("kaishiriqi") + " 00:00:00' ";
    }
    if (!Request.get("jieshuriqi").equals("")) {
        where += " and addtime<='" + Request.get("jieshuriqi") + " 23:59:59' ";
    }


    if( "教师".equals( request.getSession().getAttribute("cx") ) ){
        where += " AND faburen='"+request.getSession().getAttribute("username")+"'";}

    List<HashMap> list = Query.make("kaoshijieguo").field("count(*) count,tikumingcheng")
            .where(where)
            .group("tikumingcheng")
            .order("count(*) desc")
            .select();
%>
<style>th{text-align: center;}</style>
<table class="table">
    <thead>
    <tr>
        <th>题库名称</th>
        <th>考试人数</th>
    </tr>
    </thead>
    <tbody>
    <%for (HashMap map : list) {%>
    <tr align="center">
        <td><%=map.get("tikumingcheng")%>
        </td>
        <td><%=map.get("count")%>
        </td>
    </tr>
    <% } %>
    </tbody>
</table>



</body>
</html>
<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>


<%@ include file="head.jsp" %>

<div style="padding: 10px">
    <%
        //------------------------------------------------
        String orderby = util.Request.get("order", "id");  // 获取搜索框中的排序字段、默认为发布时间
        String sort = util.Request.get("sort", "desc");   // 获取搜索框中的排序类型、默认为倒序

        String where = " 1=1 ";   // 防止sql 搜索条件为： where and a=b 这样的错误
        where += " AND kaoshiren='" + request.getSession().getAttribute("username") + "' "; //  设置kaoshiren为当前登录用户


// 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中


        if (request.getParameter("tikuid") != null && !"".equals(request.getParameter("tikuid"))) {
            where += " AND tikuid='" + request.getParameter("tikuid") + "' ";

        }
        if (request.getParameter("tikumingcheng") != null && !"".equals(request.getParameter("tikumingcheng"))) {
            where += " AND tikumingcheng LIKE '%" + request.getParameter("tikumingcheng") + "%'";
        }
        List<HashMap> list = Query.make("jieguo").where(where).order(orderby + " " + sort).page(15);

    %>


    <div class="panel panel-default">
        <div class="panel-heading">
        <span class="module-name">
            结果        </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" action="?"><!-- form 标签开始 -->

                    <div class="form-group">


                        <i class="glyphicon glyphicon-search"></i>

                    </div>
                    <div class="form-group">
                        题库名称

                        <input type="text" class="form-control" style="" name="tikumingcheng"
                               value="<%= request.getParameter("tikumingcheng") !=null ? request.getParameter("tikumingcheng") : "" %>"/>
                    </div>
                    <select class="form-control" name="order" id="orderby">

                        <option value="id">按发布时间</option>

                    </select>
                    <select class="form-control" name="sort" id="sort">

                        <option value="desc">倒序</option>
                        <option value="asc">升序</option>

                    </select>
                    <script>$("#orderby").val("<%= orderby %>");
                    $("#sort").val("<%= sort %>");</script>
                    <button type="submit" class="btn btn-default">
                        搜索
                    </button>


                    <!--form标签结束--></form>
            </div>


            <div class="">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                    <tr align="center">
                        <th width="60" data-field="item">序号</th>
                        <th> 题库编号</th>
                        <th> 题库名称</th>
                        <th> 发布人</th>
                        <th> 考试编号</th>
                        <th> 试题题目</th>
                        <th> 类型</th>
                        <th> 答案</th>
                        <th> 得分</th>
                        <th> 字母</th>
                        <th> 考试人</th>
                        <th width="180" data-field="addtime">添加时间</th>
                        <th width="220" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        int i = 0;
                        for (HashMap map : list) {
                            i++;
                    %>
                    <tr id="<%= map.get("id") %>" pid="">
                        <td width="30" align="center">
                            <label>
                                <%= i %>
                            </label>
                        </td>
                        <td><%= map.get("tikubianhao") %>
                        </td>
                        <td><%= map.get("tikumingcheng") %>
                        </td>
                        <td><%= map.get("faburen") %>
                        </td>
                        <td><%= map.get("kaoshibianhao") %>
                        </td>
                        <td><%= map.get("shititimu") %>
                        </td>
                        <td><%= map.get("leixing") %>
                        </td>
                        <td><%= map.get("daan") %>
                        </td>
                        <td><%= map.get("defen") %>
                        </td>
                        <td><%= map.get("zimu") %>
                        </td>
                        <td><%= map.get("kaoshiren") %>
                        </td>
                        <td align="center"><%= map.get("addtime") %>
                        </td>
                        <td align="center">


                            <a href="jieguo.jsp?a=delete&id=<%= map.get("id") %>"
                               onclick="return confirm('真的要删除？')">删除</a>
                            <!--qiatnalijne-->
                        </td>
                    </tr>
                    <% } %>
                    </tbody>
                </table>
            </div>

            ${page.info}


        </div>


    </div>


</div>
<%@ include file="foot.jsp" %>

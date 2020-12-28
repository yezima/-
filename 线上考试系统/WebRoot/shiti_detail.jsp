<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>



<%@ include file="head.jsp" %>

<div style="padding: 10px">

<% HashMap map = Query.make("shiti").where("id", request.getParameter("id")).find(); %><div class="admin-detail">
    <table class="table table-detail">
        <tr>

                                    <td width="180">
                试卷编号            </td>
            <td><%= map.get("shijuanbianhao") %></td>
            
                                    <td width="180">
                试卷名称            </td>
            <td><%= map.get("shijuanmingcheng") %></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                考试类型            </td>
            <td><% 
 HashMap mapkaoshileixing14 = new CommDAO().find("SELECT leixingmingcheng FROM kaoshileixing where id='"+map.get("kaoshileixing")+"'"); 
 %><%= mapkaoshileixing14.get("leixingmingcheng") %></td>
            
                                    <td width="180">
                试题            </td>
            <td><p>类型：<%= map.get("leixing") %></p><p>答案：</p><p>难度：<%= map.get("nandu") %></p><p>标题：<%= map.get("biaoti") %></p></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                添加人            </td>
            <td><%= map.get("tianjiaren") %></td>
            
                    </tr>
    </table>
</div>


<div class="button-list">
    <div class="">
        <button onclick="history.go(-1);"
                style="background: #07de19; border: 1px solid #9a9a9a;border-top-width: 2px;border-left: 2px; ">返回
        </button>
        <button onclick="window.print()"
                style="background: #4961de; border: 1px solid #9a9a9a;border-top-width: 2px;border-left: 2px; ">打印本页
        </button>
    </div>
</div>
</div>
<%@ include file="foot.jsp" %>

<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>



<%@ include file="head.jsp" %>

<div style="padding: 10px">

<% HashMap map = Query.make("kaoshidefen").where("id", request.getParameter("id")).find(); %><div class="admin-detail">
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
                添加人            </td>
            <td><%= map.get("tianjiaren") %></td>
            
                                    <td width="180">
                考试编号            </td>
            <td><%= map.get("kaoshibianhao") %></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                单选题得分            </td>
            <td><%= map.get("danxuantidefen") %></td>
            
                                    <td width="180">
                多选题得分            </td>
            <td><%= map.get("duoxuantidefen") %></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                总得分            </td>
            <td><%= map.get("zongdefen") %></td>
            
                                    <td width="180">
                考试人            </td>
            <td><%= map.get("kaoshiren") %></td>
                    </tr>
        <tr>
            
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

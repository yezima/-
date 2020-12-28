<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>



<%@ include file="head.jsp" %>

<div style="padding: 10px">

<% HashMap map = Query.make("kaoshijieguo").where("id", request.getParameter("id")).find(); %><div class="admin-detail">
    <table class="table table-detail">
        <tr>

                                    <td width="180">
                题库编号            </td>
            <td><%= map.get("tikubianhao") %></td>
            
                                    <td width="180">
                题库名称            </td>
            <td><%= map.get("tikumingcheng") %></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                发布人            </td>
            <td><%= map.get("faburen") %></td>
            
                                    <td width="180">
                考试编号            </td>
            <td><%= map.get("kaoshibianhao") %></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                考试时长            </td>
            <td><%= map.get("kaoshishichang") %></td>
            
                                    <td width="180">
                单选题得分            </td>
            <td><%= map.get("danxuantidefen") %></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                多选题得分            </td>
            <td><%= map.get("duoxuantidefen") %></td>
            
                                    <td width="180">
                填空题得分            </td>
            <td><%= map.get("tiankongtidefen") %></td>
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

<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>



<%@ include file="head.jsp" %>

<div style="padding: 10px">

<% HashMap map = Query.make("shijuan").where("id", request.getParameter("id")).find(); %><div class="admin-detail">
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
 HashMap mapkaoshileixing9 = new CommDAO().find("SELECT leixingmingcheng FROM kaoshileixing where id='"+map.get("kaoshileixing")+"'"); 
 %><%= mapkaoshileixing9.get("leixingmingcheng") %></td>
            
                                    <td width="180">
                考试时长            </td>
            <td><%= map.get("kaoshishichang") %></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                考试次数            </td>
            <td><%= map.get("kaoshicishu") %></td>
            
                                    <td width="180">
                考生            </td>
            <td><% if( map.get("kaosheng") != null && !("".equals( map.get("kaosheng") )) ){ %>
<% 
 List<HashMap> mapxuesheng10 = new CommDAO().select("SELECT xingming FROM xuesheng WHERE id IN("+map.get("kaosheng")+")"); 
 %>
<%  for(HashMap kv:mapxuesheng10){  %>
<%= kv.get("xingming") %>  
<% } %>
<% } %>
</td>
                    </tr>
        <tr>
            
                                    <td width="180">
                是否发布            </td>
            <td><%= map.get("shifoufabu") %></td>
            
                                    <td width="180">
                备注            </td>
            <td><%= map.get("beizhu") %></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                发布人            </td>
            <td><%= map.get("faburen") %></td>
            
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

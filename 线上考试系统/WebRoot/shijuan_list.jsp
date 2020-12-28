<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>



<%@ include file="head.jsp" %>

<div style="padding: 10px">
<%
//------------------------------------------------
String orderby = util.Request.get("order" , "id");  // 获取搜索框中的排序字段、默认为发布时间
String sort  = util.Request.get("sort" , "desc");   // 获取搜索框中的排序类型、默认为倒序

String where = " 1=1 ";   // 防止sql 搜索条件为： where and a=b 这样的错误



// 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中



             if(request.getParameter("shijuanbianhao") != null && !"".equals( request.getParameter("shijuanbianhao") )){ where+=" AND shijuanbianhao LIKE '%"+request.getParameter("shijuanbianhao")+"%'"; } 
                 if(request.getParameter("shijuanmingcheng") != null && !"".equals( request.getParameter("shijuanmingcheng") )){ where+=" AND shijuanmingcheng LIKE '%"+request.getParameter("shijuanmingcheng")+"%'"; } 
                             if(request.getParameter("kaosheng") != null && !"".equals( request.getParameter("kaosheng") )){ where+=" AND kaosheng LIKE '%"+request.getParameter("kaosheng")+"%'"; } 
                         if(request.getParameter("faburen") != null && !"".equals( request.getParameter("faburen") )){ where+=" AND faburen LIKE '%"+request.getParameter("faburen")+"%'"; } 
    List<HashMap> list = Query.make("shijuan").where(where).order(orderby+" "+sort).page(15);

        %>

        



<div class="panel panel-default">
    <div class="panel-heading">
        <span class="module-name">
            试卷        </span>
        <span>列表</span>
    </div>
    <div class="panel-body">
        <div class="pa10 bg-warning">
            <form class="form-inline" action="?"><!-- form 标签开始 -->
    
                <div class="form-group">
    
    
                    <i class="glyphicon glyphicon-search"></i>
                
</div>
                                                            <div class="form-group">
    试卷编号
    
                            <input type="text" class="form-control" style="" name="shijuanbianhao" value="<%= request.getParameter("shijuanbianhao") !=null ? request.getParameter("shijuanbianhao") : "" %>"/>                        
</div>
                                                                <div class="form-group">
    试卷名称
    
                            <input type="text" class="form-control" style="" name="shijuanmingcheng" value="<%= request.getParameter("shijuanmingcheng") !=null ? request.getParameter("shijuanmingcheng") : "" %>"/>                        
</div>
                                                                                                                            <div class="form-group">
    考生
    
                            <select class="form-control class_kaosheng18" data-value="<%= request.getParameter("kaosheng") !=null ? request.getParameter("kaosheng") : "" %>" id="kaosheng" name="kaosheng">
<option value="">请选择</option><% 
 List<HashMap> select = new CommDAO().select("SELECT * FROM xuesheng ORDER BY id desc"); 
 %>
<%  for(HashMap m:select){  %>
<option value="<%= m.get("id") %>"><%= m.get("xingming") %></option>
<% } %>

</select>
<script>
$(".class_kaosheng18").val($(".class_kaosheng18").attr("data-value"))</script>
                        
</div>
                                                                                                        <div class="form-group">
    发布人
    
                            <input type="text" class="form-control" style="" name="faburen" value="<%= request.getParameter("faburen") !=null ? request.getParameter("faburen") : "" %>"/>                        
</div>
                                    <select class="form-control" name="order" id="orderby">

                    <option value="id">按发布时间</option>
                                    
</select>
                <select class="form-control" name="sort" id="sort">

                    <option value="desc">倒序</option>
                    <option value="asc">升序</option>
                
</select>
                <script>$("#orderby").val("<%= orderby %>");$("#sort").val("<%= sort %>");</script>
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
                        <th> 试卷编号 </th>
<th> 试卷名称 </th>
<th> 考试类型 </th>
<th> 考试时长 </th>
<th> 考试次数 </th>
<th> 考生 </th>
<th> 是否发布 </th>
<th> 备注 </th>
<th> 发布人 </th>
                                                                        <th width="180" data-field="addtime">添加时间</th>
                        <th width="220" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <% 
                int i= 0;
                for(HashMap map:list){
                i++;
                 %>
                    <tr id="<%= map.get("id") %>" pid="">
                        <td width="30" align="center">
                            <label>
                                                                <%= i %>
                            </label>
                        </td>
                        <td> <%= map.get("shijuanbianhao") %> </td>
<td> <%= map.get("shijuanmingcheng") %> </td>
<td> <% 
 HashMap mapkaoshileixing3 = new CommDAO().find("SELECT leixingmingcheng FROM kaoshileixing where id='"+map.get("kaoshileixing")+"'"); 
 %><%= mapkaoshileixing3.get("leixingmingcheng") %> </td>
<td> <%= map.get("kaoshishichang") %> </td>
<td> <%= map.get("kaoshicishu") %> </td>
<td> <% if( map.get("kaosheng") != null && !("".equals( map.get("kaosheng") )) ){ %>
<% 
 List<HashMap> mapxuesheng4 = new CommDAO().select("SELECT xingming FROM xuesheng WHERE id IN("+map.get("kaosheng")+")"); 
 %>
<%  for(HashMap kv:mapxuesheng4){  %>
<%= kv.get("xingming") %>  
<% } %>
<% } %>
 </td>
<td> <%= map.get("shifoufabu") %> </td>
<td> <%= map.get("beizhu") %> </td>
<td> <%= map.get("faburen") %> </td>
                                                                        <td align="center"><%= map.get("addtime") %></td>
                        <td align="center">
                            
                             <a href="shiti_add.jsp?id=<%= map.get("id") %>">试题添加</a> 
 <a href="shiti_list.jsp?shijuanid=<%= map.get("id") %>">试题查询</a> 
 <a href="kaoshijieguo_add.jsp?id=<%= map.get("id") %>">考试结果添加</a> 
 <a href="kaoshijieguo_list.jsp?shijuanid=<%= map.get("id") %>">考试结果查询</a> 
 <a href="kaoshidefen_add.jsp?id=<%= map.get("id") %>">考试得分添加</a> 
 <a href="kaoshidefen_list.jsp?shijuanid=<%= map.get("id") %>">考试得分查询</a> 
                                                            <a href="shijuan_detail.jsp?id=<%= map.get("id") %>">
                                    详细
                                </a>
                                                        <a href="shijuan_updt.jsp?id=<%= map.get("id") %>">修改</a>
                            <a href="shijuan.jsp?a=delete&id=<%= map.get("id") %>" onclick="return confirm('真的要删除？')">删除</a>
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

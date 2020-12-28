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


         if(request.getParameter("tikuid") != null && !"".equals( request.getParameter("tikuid") )){ 
    where += " AND tikuid='"+request.getParameter("tikuid")+"' ";

    }
                 if(request.getParameter("tikumingcheng") != null && !"".equals( request.getParameter("tikumingcheng") )){ where+=" AND tikumingcheng LIKE '%"+request.getParameter("tikumingcheng")+"%'"; } 
                 if(request.getParameter("shititimu") != null && !"".equals( request.getParameter("shititimu") )){ where+=" AND shititimu LIKE '%"+request.getParameter("shititimu")+"%'"; } 
                 if(request.getParameter("leixing") != null && !"".equals( request.getParameter("leixing") )){ 
where+=" AND leixing ='"+request.getParameter("leixing")+"'"; } 
            List<HashMap> list = Query.make("shiti").where(where).order(orderby+" "+sort).page(15);

        %>

        



<div class="panel panel-default">
    <div class="panel-heading">
        <span class="module-name">
            试题        </span>
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
    
                            <input type="text" class="form-control" style="" name="tikumingcheng" value="<%= request.getParameter("tikumingcheng") !=null ? request.getParameter("tikumingcheng") : "" %>"/>                        
</div>
                                                                <div class="form-group">
    试题题目
    
                            <input type="text" class="form-control" data-rule-required="true" data-msg-required="请填写试题题目" id="shititimu" name="shititimu" value="<%= request.getParameter("shititimu") !=null ? request.getParameter("shititimu") : "" %>"/>
</div>
                                                                <div class="form-group">
    类型
    
                            <select class="form-control class_leixing20" data-value="<%= request.getParameter("leixing") !=null ? request.getParameter("leixing") : "" %>" id="leixing" name="leixing">
<option value="">请选择</option><option value="单选题">单选题</option>
<option value="多选题">多选题</option>
<option value="填空题">填空题</option>

</select>
<script>
$(".class_leixing20").val($(".class_leixing20").attr("data-value"))</script>
                        
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
                        <th> 题库编号 </th>
<th> 题库名称 </th>
<th> 试题题目 </th>
<th> 类型 </th>
<th> 答案 </th>
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
                        <td> <%= map.get("tikubianhao") %> </td>
<td> <%= map.get("tikumingcheng") %> </td>
<td> <%= map.get("shititimu") %> </td>
<td> <%= map.get("leixing") %> </td>
<td> <script>
                (function () {
                    try {
                        var field = <%= map.get("daan") %>;
                        $.each(field, function () {
                            document.writeln(this.zimu + ' ' + this.title + ' 得分：' + this.point + '<br>');
                        })
                    } catch (e) {
                        
                    }
                })();
            </script> </td>
<td> <%= map.get("faburen") %> </td>
                                                                        <td align="center"><%= map.get("addtime") %></td>
                        <td align="center">
                            
                                                                                    <a href="shiti_updt.jsp?id=<%= map.get("id") %>">修改</a>
                            <a href="shiti.jsp?a=delete&id=<%= map.get("id") %>" onclick="return confirm('真的要删除？')">删除</a>
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

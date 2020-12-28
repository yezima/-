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
    where += " AND tianjiaren='"+request.getSession().getAttribute("username")+"' "; //  设置tianjiaren为当前登录用户



// 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中



             if(request.getParameter("biaoti") != null && !"".equals( request.getParameter("biaoti") )){ where+=" AND biaoti LIKE '%"+request.getParameter("biaoti")+"%'"; } 
                 if(request.getParameter("kaoshileixing") != null && !"".equals( request.getParameter("kaoshileixing") )){ 
where+=" AND kaoshileixing ='"+request.getParameter("kaoshileixing")+"'"; } 
                 if(request.getParameter("leixing") != null && !"".equals( request.getParameter("leixing") )){ 
where+=" AND leixing ='"+request.getParameter("leixing")+"'"; } 
                     if(request.getParameter("nandu") != null && !"".equals( request.getParameter("nandu") )){ 
where+=" AND nandu ='"+request.getParameter("nandu")+"'"; } 
        List<HashMap> list = Query.make("tiku").where(where).order(orderby+" "+sort).page(15);

        %>

        



<div class="panel panel-default">
    <div class="panel-heading">
        <span class="module-name">
            题库        </span>
        <span>列表</span>
    </div>
    <div class="panel-body">
        <div class="pa10 bg-warning">
            <form class="form-inline" action="?"><!-- form 标签开始 -->
    
                <div class="form-group">
    
    
                    <i class="glyphicon glyphicon-search"></i>
                
</div>
                                                            <div class="form-group">
    标题
    
                            <input type="text" class="form-control" data-rule-required="true" data-msg-required="请填写标题" id="biaoti" name="biaoti" value="<%= request.getParameter("biaoti") !=null ? request.getParameter("biaoti") : "" %>"/>
</div>
                                                                <div class="form-group">
    考试类型
    
                            <select class="form-control class_kaoshileixing46" data-value="<%= request.getParameter("kaoshileixing") !=null ? request.getParameter("kaoshileixing") : "" %>" id="kaoshileixing" name="kaoshileixing">
<option value="">请选择</option><% 
 List<HashMap> select = new CommDAO().select("SELECT * FROM kaoshileixing ORDER BY id desc"); 
 %>
<%  for(HashMap m:select){  %>
<option value="<%= m.get("id") %>"><%= m.get("leixingmingcheng") %></option>
<% } %>

</select>
<script>
$(".class_kaoshileixing46").val($(".class_kaoshileixing46").attr("data-value"))</script>
                        
</div>
                                                                <div class="form-group">
    类型
    
                            <select class="form-control class_leixing47" data-value="<%= request.getParameter("leixing") !=null ? request.getParameter("leixing") : "" %>" id="leixing" name="leixing">
<option value="">请选择</option><option value="单选题">单选题</option>
<option value="多选题">多选题</option>

</select>
<script>
$(".class_leixing47").val($(".class_leixing47").attr("data-value"))</script>
                        
</div>
                                                                                    <div class="form-group">
    难度
    
                            <select class="form-control class_nandu48" data-value="<%= request.getParameter("nandu") !=null ? request.getParameter("nandu") : "" %>" id="nandu" name="nandu">
<option value="">请选择</option><option value="难">难</option>
<option value="易">易</option>

</select>
<script>
$(".class_nandu48").val($(".class_nandu48").attr("data-value"))</script>
                        
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
                        <th> 标题 </th>
<th> 考试类型 </th>
<th> 类型 </th>
<th> 答案 </th>
<th> 难度 </th>
<th> 添加人 </th>
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
                        <td> <%= map.get("biaoti") %> </td>
<td> <% 
 HashMap mapkaoshileixing18 = new CommDAO().find("SELECT leixingmingcheng FROM kaoshileixing where id='"+map.get("kaoshileixing")+"'"); 
 %><%= mapkaoshileixing18.get("leixingmingcheng") %> </td>
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
<td> <%= map.get("nandu") %> </td>
<td> <%= map.get("tianjiaren") %> </td>
                                                                        <td align="center"><%= map.get("addtime") %></td>
                        <td align="center">
                            
                                                                                        <a href="tiku_detail.jsp?id=<%= map.get("id") %>">
                                    详细
                                </a>
                                                        <a href="tiku_updt.jsp?id=<%= map.get("id") %>">修改</a>
                            <a href="tiku.jsp?a=delete&id=<%= map.get("id") %>" onclick="return confirm('真的要删除？')">删除</a>
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

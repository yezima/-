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


         if(request.getParameter("shijuanid") != null && !"".equals( request.getParameter("shijuanid") )){ 
    where += " AND shijuanid='"+request.getParameter("shijuanid")+"' ";

    }
             if(request.getParameter("shijuanbianhao") != null && !"".equals( request.getParameter("shijuanbianhao") )){ where+=" AND shijuanbianhao LIKE '%"+request.getParameter("shijuanbianhao")+"%'"; } 
                 if(request.getParameter("shijuanmingcheng") != null && !"".equals( request.getParameter("shijuanmingcheng") )){ where+=" AND shijuanmingcheng LIKE '%"+request.getParameter("shijuanmingcheng")+"%'"; } 
                 if(request.getParameter("tianjiaren") != null && !"".equals( request.getParameter("tianjiaren") )){ where+=" AND tianjiaren LIKE '%"+request.getParameter("tianjiaren")+"%'"; } 
                 if(request.getParameter("kaoshibianhao") != null && !"".equals( request.getParameter("kaoshibianhao") )){ where+=" AND kaoshibianhao LIKE '%"+request.getParameter("kaoshibianhao")+"%'"; } 
                             if(request.getParameter("kaoshiren") != null && !"".equals( request.getParameter("kaoshiren") )){ where+=" AND kaoshiren LIKE '%"+request.getParameter("kaoshiren")+"%'"; } 
    List<HashMap> list = Query.make("kaoshidefen").where(where).order(orderby+" "+sort).page(15);

        %>

        



<div class="panel panel-default">
    <div class="panel-heading">
        <span class="module-name">
            考试得分        </span>
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
    添加人
    
                            <input type="text" class="form-control" style="" name="tianjiaren" value="<%= request.getParameter("tianjiaren") !=null ? request.getParameter("tianjiaren") : "" %>"/>                        
</div>
                                                                <div class="form-group">
    考试编号
    
                            <input type="text" class="form-control" style="" name="kaoshibianhao" value="<%= request.getParameter("kaoshibianhao") !=null ? request.getParameter("kaoshibianhao") : "" %>"/>                        
</div>
                                                                                                                            <div class="form-group">
    考试人
    
                            <input type="text" class="form-control" style="" name="kaoshiren" value="<%= request.getParameter("kaoshiren") !=null ? request.getParameter("kaoshiren") : "" %>"/>                        
</div>
                                    <select class="form-control" name="order" id="orderby">

                    <option value="id">按发布时间</option>
                                                <option value="zongdefen">
                                按总得分                            </option>
                                        
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
<th> 添加人 </th>
<th> 考试编号 </th>
<th> 单选题得分 </th>
<th> 多选题得分 </th>
<th> 总得分 </th>
<th> 考试人 </th>
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
<td> <%= map.get("tianjiaren") %> </td>
<td> <%= map.get("kaoshibianhao") %> </td>
<td> <%= map.get("danxuantidefen") %> </td>
<td> <%= map.get("duoxuantidefen") %> </td>
<td> <%= map.get("zongdefen") %> </td>
<td> <%= map.get("kaoshiren") %> </td>
                                                                        <td align="center"><%= map.get("addtime") %></td>
                        <td align="center">
                            
                                                                                        <a href="kaoshidefen_detail.jsp?id=<%= map.get("id") %>">
                                    详细
                                </a>
                                                        <a href="kaoshidefen_updt.jsp?id=<%= map.get("id") %>">修改</a>
                            <a href="kaoshidefen.jsp?a=delete&id=<%= map.get("id") %>" onclick="return confirm('真的要删除？')">删除</a>
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

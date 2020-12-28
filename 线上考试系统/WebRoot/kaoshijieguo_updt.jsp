<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>


<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>

<div style="padding: 10px">


    <% if (request.getSession().getAttribute("username") == null || "".equals(request.getSession().getAttribute("username"))) { %>
    <script>
        alert('对不起,请您先登陆!');
        location.href = 'login.jsp';
    </script>
    <%
            return;
        } %>


    <%
        // 获取需要编辑的数据
        String updtself = "0"; // 设置更新
        HashMap mmm = new CommDAO().getmap(request.getParameter("id"), "kaoshijieguo");
    %>


    <div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">
                编辑考试结果:
            </div>
            <div class="panel-body">
                <form action="kaoshijieguo.jsp?a=update" method="post" name="form1" id="form1"><!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">题库编号</label>
                            <div class="col-sm-8">

                                <%= mmm.get("tikubianhao") %><input type="hidden" id="tikubianhao" name="tikubianhao"
                                                                    value="<%= Info.html(mmm.get("tikubianhao")) %>"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">题库名称</label>
                            <div class="col-sm-8">

                                <%= mmm.get("tikumingcheng") %><input type="hidden" id="tikumingcheng"
                                                                      name="tikumingcheng"
                                                                      value="<%= Info.html(mmm.get("tikumingcheng")) %>"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">发布人</label>
                            <div class="col-sm-8">

                                <%= mmm.get("faburen") %><input type="hidden" id="faburen" name="faburen"
                                                                value="<%= Info.html(mmm.get("faburen")) %>"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">考试编号</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" style="width:150px;" readonly="readonly"
                                       id="kaoshibianhao" name="kaoshibianhao"
                                       value="<%= Info.html(mmm.get("kaoshibianhao")) %>"/>
                            </div>
                        </div>
                    </div>
               <%--     <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">考试时长</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" style="width:150px;" id="kaoshishichang"
                                       name="kaoshishichang" value="<%= Info.html(mmm.get("kaoshishichang")) %>"/>
                            </div>
                        </div>
                    </div>--%>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">单选题得分</label>
                            <div class="col-sm-8">

                                <input type="number" class="form-control" style="width:150px;" number="true"
                                       data-msg-number="输入一个有效数字" id="danxuantidefen" name="danxuantidefen"
                                       value="<%= Info.html(mmm.get("danxuantidefen")) %>"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">多选题得分</label>
                            <div class="col-sm-8">

                                <input type="number" class="form-control" style="width:150px;" number="true"
                                       data-msg-number="输入一个有效数字" id="duoxuantidefen" name="duoxuantidefen"
                                       value="<%= Info.html(mmm.get("duoxuantidefen")) %>"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">填空题得分</label>
                            <div class="col-sm-8">

                                <input type="number" class="form-control" style="width:150px;" number="true"
                                       data-msg-number="输入一个有效数字" id="tiankongtidefen" name="tiankongtidefen"
                                       value="<%= Info.html(mmm.get("tiankongtidefen")) %>"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">总得分</label>
                            <div class="col-sm-8">

                                <input type="number" class="form-control" style="width:150px;" number="true"
                                       data-msg-number="输入一个有效数字" id="zongdefen" name="zongdefen"
                                       value="<%= Info.html(mmm.get("zongdefen")) %>"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">考试人</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" style="width:150px;" readonly="readonly"
                                       id="kaoshiren" name="kaoshiren" value="<%= mmm.get("kaoshiren") %>"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
                            <div class="col-sm-8">

                                <input name="id" value="<%= mmm.get("id") %>" type="hidden"/>
                                <input name="tikuid" value="<%= mmm.get("tikuid") %>" type="hidden"/>
                                <input name="referer" value="<%=request.getHeader("referer")%>" type="hidden"/>
                                <input name="updtself" value="<%= updtself %>" type="hidden"/>


                                <button type="submit" class="btn btn-primary" name="Submit">
                                    提交
                                </button>
                                <button type="reset" class="btn btn-default" name="Submit2">
                                    重置
                                </button>


                            </div>
                        </div>
                    </div>

                    <!--form标签结束--></form>
            </div>
        </div>

        <!-- container定宽，并剧中结束 --></div>


    <script>
        $(function () {
            $('#form1').validate();
        });
    </script>


</div>
<%@ include file="foot.jsp" %>

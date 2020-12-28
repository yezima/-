<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit"/>
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <title>在线考试系统</title>

    <!-- CSS -->
    <link rel="stylesheet" href="htstyle/css/style.css">

    <!-- layui css -->
    <link rel="stylesheet" href="htstyle/layui/css/layui.css">
    <script type="text/javascript" src="htstyle/js/jquery-1.11.0.min.js"></script>
    <script src="htstyle/js/clock.js"></script>
</head>

<body class="layui-layout-body control_box">
<!-- 背景 -->
<div class="bg_box"></div>
<!-- content box-->
<div class="layui-layout layui-layout-admin">
    <!-- top -->
    <div class="layui-header">
        <div class="top_box">
            <div class="logo">
                    <span>
                        在线考试系统
                    </span>
            </div>
            <div class="top_user">
                <span><img src="htstyle/images/head.jpg" /></span>
                <dl>
                    <dt><%= request.getSession().getAttribute("username") !=null ? request.getSession().getAttribute("username") : "" %></dt>
                    <dd>权限：<%= request.getSession().getAttribute("cx") !=null ? request.getSession().getAttribute("cx") : "" %> 系统时间：<b id="clockTime11"></b></dd>
                </dl>
            </div>
            <div class="top_icon">
                
                <a href="sy.jsp" title="后台主页"><img src="htstyle/images/top_person.png"></a>

                <a href="logout.jsp" title="退出" onclick="return confirm('确定退出系统？')"><img src="htstyle/images/top_exit.png"></a>

            </div>
        </div>
    </div>
    <!-- side menu -->
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" id="layui-nav-tree-js"  lay-filter="test">
                                <% if( "管理员".equals( request.getSession().getAttribute("cx") ) ){ %>
                <%@ include file="left_guanliyuan.jsp" %>
                <% } %>
                                <% if( "学生".equals( request.getSession().getAttribute("cx") ) ){ %>
                <%@ include file="left_xuesheng.jsp" %>
                <% } %>
                                <% if( "教师".equals( request.getSession().getAttribute("cx") ) ){ %>
                <%@ include file="left_jiaoshi.jsp" %>
                <% } %>
                            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 展开收起按钮 -->
        <div class="open_shrink open" title="展开/收起">
            <span></span>
        </div>
        <script type="text/javascript">
            $(function(){
                $(".open_shrink").click(function(){
                    if ($(this).hasClass("open")) {
                        $(this).removeClass("open");
                        $(".layui-side").stop().animate({left:-220},300);
                        $(".layui-body").stop().animate({left:0},300);
                    }else{
                        $(this).addClass("open");
                        $(".layui-side").stop().animate({left:0},300);
                        $(".layui-body").stop().animate({left:220},300);
                    }
                });
                showcal('clockTime11');
                $('#layui-nav-tree-js>.layui-nav-item:eq(0)').addClass('layui-nav-itemed');
            })
        </script>
        <!-- iframe -->
        <iframe src="sy.jsp" name="main_self_frame" frameborder="0" class="layadmin-iframe" scrolling="yes"></iframe>
    </div>

</div>
<!-- layui js -->
<script src="htstyle/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
    });

</script>

</body>
</html>


<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>
<%@ page import="org.json.simple.JSONArray" %>


<%@ include file="head.jsp" %>

<div style="padding: 10px;padding-left: 20px">


    <head>
        <meta charset="UTF-8">
        <title>题库</title>

        <link rel="stylesheet" href="css.css">
        <script src="js/jquery.js"></script>
        <script src="js/jquery.validate.js"></script>

        <link rel="stylesheet" href="js/layer/theme/default/layer.css"/>
        <script src="js/layer/layer.js"></script>


    </head>



    <body>


    <% HashMap map = Query.make("tiku").where("id", request.getParameter("id")).find(); %>
    <div class="admin-detail">
        <table class="table table-detail">
            <tr>

                <td width="180">
                    题库编号
                </td>
                <td><%= map.get("tikubianhao") %>
                </td>

                <td width="180">
                    题库名称
                </td>
                <td><%= map.get("tikumingcheng") %>
                </td>
            </tr>
            <tr>
                <td width="180">
                    考试班级
                </td>
                <td><%
                    HashMap mapbanji6 = new CommDAO().find("SELECT banjimingcheng FROM banji where id='"+map.get("kaoshibanji")+"'");
                %><%= mapbanji6.get("banjimingcheng") %></td>
                <td width="180">
                    考试时长
                </td>
                <td><%= map.get("kaoshishizhang") %>
                </td>

                <td width="180">
                    发布人
                </td>
                <td><%= map.get("faburen") %>
                </td>
            </tr>
            <tr>

            </tr>
        </table>
    </div>


    <form action="javascript:;" method="post" name="form1" id="form1" onsubmit="return submitZhangjie()">

        <%
            // LIMIT 题目数
            List<HashMap> wenda = new dao.CommDAO().select("SELECT * FROM shiti WHERE tikuid='" + map.get("id") +
                    "' and leixing='单选题' ORDER BY rand() LIMIT 10");

            wenda.addAll(new dao.CommDAO().select("SELECT * FROM shiti WHERE tikuid='" + map.get("id") +
                    "' and leixing='多选题' ORDER BY rand() LIMIT 5"));

            wenda.addAll(new dao.CommDAO().select("SELECT * FROM shiti WHERE tikuid='" + map.get("id") +
                    "' and leixing='填空题' ORDER BY rand() LIMIT 5"));

        %>
        <div id="zhangjielianxi">

        </div>

        <input type="hidden" name="tikuid"
               value="<%= request.getParameter("id") !=null ? request.getParameter("id") : "" %>"/>
        <input name="referer" value="<%=request.getHeader("referer")%>" type="hidden"/>

        <input type="submit" name="Submit" value="提交"
               class="btn btn-primary"/>
        <input type="reset" name="Submit2" value="重置" class="btn btn-default"/>
        <%--<button onclick="window.print()" type="button" class="btn btn-default">打印</button>--%>


        <br><br><br><br>
    </form>


    <script>
        $(function () {
            $('#form1').validate();
        })

    </script>

    <div id="div"
         style="position: fixed;bottom: 0px;padding: 10px;background: #f2f2f2; color: red; text-align: center;"></div>

    <script>
        (function () {
            var fenshu = <%= map.get("kaoshishizhang") %>; // 分钟数
            var key = "stopTime<%=request.getParameter("id")%>";
            var stopTime = sessionStorage.getItem(key);
            /*if (stopTime && new Date().getTime() > stopTime) {
                stopTime = (new Date().getTime()) + 60 * fenshu * 1000;
            }*/
            stopTime = (new Date().getTime()) + 60 * fenshu * 1000;
            sessionStorage.setItem(key, stopTime);
            stopTime = new Date(Math.floor(stopTime));

            function clock() {
                if (new Date().getTime() > stopTime) {
                    submitZhangjie();
                    return;
                }
                var today = new Date(),//当前时间
                    h = today.getHours(),
                    m = today.getMinutes(),
                    s = today.getSeconds();
                var stopH = stopTime.getHours(),
                    stopM = stopTime.getMinutes(),
                    stopS = stopTime.getSeconds();
                var shenyu = stopTime.getTime() - today.getTime(),//倒计时毫秒数
                    shengyuD = parseInt(shenyu / (60 * 60 * 24 * 1000)),//转换为天
                    D = parseInt(shenyu) - parseInt(shengyuD * 60 * 60 * 24 * 1000),//除去天的毫秒数
                    shengyuH = parseInt(D / (60 * 60 * 1000)),//除去天的毫秒数转换成小时
                    H = D - shengyuH * 60 * 60 * 1000,//除去天、小时的毫秒数
                    shengyuM = parseInt(H / (60 * 1000)),//除去天的毫秒数转换成分钟
                    M = H - shengyuM * 60 * 1000;//除去天、小时、分的毫秒数
                var S = parseInt((shenyu - shengyuD * 60 * 60 * 24 * 1000 - shengyuH * 60 * 60 * 1000 - shengyuM * 60 * 1000) / 1000)//除去天、小时、分的毫秒数转化为秒
                document.getElementById("div").innerHTML = '剩余时间：'+(shengyuH + "小时" + shengyuM + "分" + S + "秒" + "<br>");
                // setTimeout("clock()",500);
                setTimeout(clock, 500);
            }

            $(clock);
        })();
    </script>

    <% if (wenda.size() > 0) { %>
    <script>
        (function () {
            var json = <%=JSONArray.toJSONString(wenda)%>;
            var result = "";
            var j = 1;
            $.each(json, function () {
                result += '<div data-j="' + j + '" data-type="' + this.leixing + '" class="zhangjie-list" style="margin-bottom: 10px; padding: 10px; background: #fff">' +
                    '<h3 data-timu="' + this.shititimu + '">第' + j + '题：' + this.shititimu + '</h3>' +
                    '<div>';
                if (this.leixing == '单选题') {
                    var daan = JSON.parse(this.daan);
                    $.each(daan, function () {
                        result += '<label><input type="radio" name="daan' + j + '" data-point="' + this.point + '" data-title="' + this.zimu + '、' + this.title + '" value="' + this.zimu + '"  /> ' + this.zimu + ' ' + this.title + ' </label> ';
                    });
                } else if (this.leixing == '多选题') {
                    var daan = JSON.parse(this.daan);
                    $.each(daan, function () {
                        result += '<label><input type="checkbox" name="daan' + j + '" data-point="' + this.point + '" data-title="' + this.zimu + '、' + this.title + '" value="' + this.zimu + '" /> ' + this.zimu + ' ' + this.title + ' </label> ';
                    });
                } else if (this.leixing == '填空题') {
                    result += '<textarea name="daan' + j + '" style="width: 100%;height: 85px;" placeholder="请填写"></textarea>';
                }
                result += '</div>';
                result += '</div>';
                j++;
            });
            $('#zhangjielianxi').html(result);
        })();
        var isPost = false;

        function submitZhangjie() {
            var result = [];
            var isOk = true;
            if (isPost) {
                return;
            }
            isPost = true;
            $('#zhangjielianxi>.zhangjie-list').each(function () {
                if (!isOk) return;
                var obj = {};
                var that = $(this);
                obj.shititimu = $(this).find('h3').attr("data-timu");
                var j = that.attr("data-j");
                var type = that.attr("data-type");
                obj.leixing = type;
                //var res = that.find('[name="daan'+j+'"]');
                if (type == "单选题") {
                    var radio = that.find('[name="daan' + j + '"]:checked');
                    if (radio.length == 0) {
                        //alert('请选择【' + obj.timu + '】的题目答案');
                        //isOk = false;
                        //return;
                        obj.daan = '';
                        obj.defen = 0;
                        obj.zimu = '';
                    } else {
                        obj.daan = radio.attr('data-title');
                        obj.defen = radio.attr('data-point');
                        obj.zimu = radio.val();
                    }

                } else if (type == "多选题") {
                    var checkbox = that.find('[name="daan' + j + '"]:checked');
                    if (checkbox.length == 0) {
                        //alert('请选择【' + obj.timu + '】的题目答案');
                        //isOk = false;
                        //return;
                    }
                    var defen = 0;
                    var daan = [];
                    var zimu = [];
                    checkbox.each(function () {
                        daan.push($(this).attr('data-title'));
                        defen += Math.floor($(this).attr('data-point'));
                        zimu.push(this.value);
                        //obj.defen = radio.attr('data-point');
                    });
                    obj.daan = daan.join(",");
                    obj.defen = defen;
                    obj.zimu = zimu.join(",");
                } else {
                    daan = that.find('[name="daan' + j + '"]').val();
                    obj.defen = -1;
                    obj.daan = daan;
                }
                result.push(obj);
            });
            if (!isOk) {
                isPost = false;
                return false;
            }
            var index = layer.load(0, {
                shade: [0.5, '#000'] //0.1透明度的白色背景
            });
            $.post("tiku_insert.jsp?f=f", {
                JSON: JSON.stringify(result),
                tikuid:<%=request.getParameter("id")%>
            }, function (res) {
                layer.close(index);
                var re = eval("(" + res + ")");
                if (re.code == 0) {
                    layer.alert("提交成功", function () {
                        location.href = 'jieguo_list_kaoshiren.jsp?id=' + re.data;
                    });
                } else {
                    layer.alert(re.msg);
                }
                isPost = false;
            });
            return false;
        }

    </script>
    <% } %>

    </body>
</div>
<%@ include file="foot.jsp" %>

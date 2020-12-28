<%@ page language="java" import="dao.CommDAO" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>

<%@page import="util.Info" %>
<%@ page import="com.alibaba.fastjson.*" %>
<%@ page import="dao.Query" %>
<%

    if (request.getParameter("f") != null) {

        String json1 = request.getParameter("JSON");

        JSONArray json = JSON.parseArray(json1);

        //[{"timu":"第1题：Ai 画直线使用直线工具","daan":"A、正确","defen":"0"},{"timu":"第2题：老师使用缩放工具是什么","daan":"A、旋转工具","defen":"0"}]
        //JSONArray json = JSONArray.fromObject(JSON);
        HashMap data = new HashMap();

        HashMap readMap = new CommDAO().find("SELECT id tikuid,tikubianhao,tikumingcheng,faburen FROM tiku WHERE  id = " + request.getParameter("tikuid") + "");

        String kaoshibianhao = Info.getID();


        data.putAll(readMap);
        data.put("kaoshibianhao", kaoshibianhao);
        data.put("kaoshiren", request.getSession().getAttribute("username"));
        data.put("addtime", Info.getDateStr());
        int total = 0;
        int danxuantidefen = 0;
        int duoxuantidefen = 0;
        int tiankongtidefen = 0;
        for (int i = 0; i < json.size(); i++) {
            JSONObject obj = json.getJSONObject(i);
            data.putAll(obj);
            data.put("tikuid", request.getParameter("tikuid"));
            int defen = Integer.valueOf(String.valueOf(obj.get("defen"))).intValue();
            if (defen != -1) {
                if (obj.get("leixing").equals("单选题")) {
                    danxuantidefen += defen;
                } else {
                    duoxuantidefen += defen;
                }
                total += defen;

                if (defen == 0) {
                    Query.make("cuoti").add(data);
                }
            }

            Query.make("jieguo").add(data);
        }
        HashMap jieguo = new HashMap();
        jieguo.putAll(readMap);
        jieguo.put("kaoshibianhao", kaoshibianhao);
        jieguo.put("tikuid", request.getParameter("tikuid"));
        jieguo.put("danxuantidefen", danxuantidefen);
        jieguo.put("duoxuantidefen", duoxuantidefen);
        jieguo.put("tiankongtidefen", tiankongtidefen);
        jieguo.put("zongdefen", total);
        jieguo.put("kaoshiren", request.getSession().getAttribute("username"));
        jieguo.put("addtime", Info.getDateStr());


        long insertId = Query.make("kaoshijieguo").insert(jieguo);

        out.clear();
        out.clearBuffer();
        out.println("{code:0,data:" + insertId + "}");
        out.close();
    } else {
        out.println("{code:1,msg:\"信息提交失败\"}");
        out.close();
    }
%>
<%@ page language="java" pageEncoding="GBK" isELIgnored="false" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会员信息</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String str= request.getSession().getServletContext().getRealPath("photosc"); 
str+="\\";
System.err.println(path+"="+str + "...." +basePath);
%>
<body>
<div id="header"></div>	
	<div id="nav">
    	<ul>
       <li><a href="${pageContext.request.contextPath}/AnSelect.do">首页</a></li>
	<li><a href="chamberDetial.jsp">商会介绍</a></li>
	<li><a
		href="${pageContext.request.contextPath}/NewSelect.do?newid=1">商会动态</a></li>
	<li><a href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">会员单位</a></li>
	<li><a
		href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">管理前线</a></li>
	<li><a
		href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">会员随笔</a></li>
	<li><a
		href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">家乡</a></li>
	<li><a
		href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">老乡留言</a></li>
	<li><a href="lxwm.jsp">联系我们</a></li>
    	</ul>
    </div>
<div id="mainContent">
	<div id="tips">当前位置：<span class="fontColor">会员信息</span></div>
    <div id="mainLeft">
    	<div class="sharp color1">
            <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
            <div class="content">  
                  <h3><span class="fontColor"><big><big>M</big></big>enu</span>导航</h3>
                  <div id="menuLeft">
                  	<ul>
                  		<li><a href="chamberDetial.jsp">商会介绍</a></li>
	<li><a
		href="${pageContext.request.contextPath}/NewSelect.do?newid=1">商会动态</a></li>
	<li><a href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">会员单位</a></li>
	<li><a
		href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">管理前线</a></li>
	<li><a
		href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">会员随笔</a></li>
	<li><a
		href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">家乡</a></li>
	<li><a
		href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">老乡留言</a></li>
	  <li><a href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=1&str1=0&str2=6">图片展示</a></li>
                    </ul>
                  </div>
            </div>
            <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
    	</div>
<!-- registerbtn       --> 
            <div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                      <div id="registerbtn">
                                <input type="button" value="" class="personbtn"  onclick="window.location.href='gerensq.jsp'; " />
              <input type="button" value="" class="companybtn"  onclick="window.location.href='danwsq.jsp'; " />
               <input type="button" value="" class="linkbtn"  onclick="window.location.href='lxwm.jsp'; " />
                      </div>
                </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
            </div>
    </div>
    <div id="mainRight">
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	<h3>会员信息</h3>
				
                     <div id="ListWrapper">
					 	<form id="lyname">
					<table   >
					<logic:iterate id="map" collection="${requestScope.arr}">
                 
					  <tr>
    <td rowspan="5"  style="text-align:center">&nbsp;
    	<img src="<%=basePath %>photosc/${map.ptoux }"  width="110" height="120" />
	 
	</td>
    <td colspan="2">&nbsp;姓名：${map.PName} </td>
   
  </tr>
  <tr>
    <td colspan="2">&nbsp;性别：${map.PSex} </td>
   
  </tr>
  <tr>
    <td colspan="2">&nbsp;出生日期：${map.PBirthTime}</td>
 
  </tr>
  <tr>
      <td colspan="2">&nbsp;联系方式：${map.PPhone }</td>
 
  </tr>
    <tr>
    <td >&nbsp;家乡：${map.PHometown}</td> 
 
  </tr>

		 
					</table>
				
					<table>
					  <tr>
      <td colspan="0">&nbsp;个人介绍：</td>
 
  </tr>
    <tr>
	 <td colspan="0"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	 ${map.pcontent }
	 </td>
  </tr>
					</table>
						</logic:iterate >
					 </form>
				 	 
					 </div>      
                </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
            </div>
    </div>
    <div class="clear"></div>
</div>
<div id="footer">
  <ul>
  <li><a href="chamberDetial.jsp">商会介绍</a></li>
	<li><a
		href="${pageContext.request.contextPath}/NewSelect.do?newid=1">商会动态</a></li>
	<li><a href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">会员单位</a></li>
	<li><a
		href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">管理前线</a></li>
	<li><a
		href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">会员随笔</a></li>
	<li><a
		href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">家乡</a></li>
	<li><a
		href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">老乡留言</a></li>
 <li><a href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=1&str1=0&str2=6">图片展示</a></li>
 <!-- 
	<li><a href="flgw.jsp">法律顾问</a></li>
	 -->
	<li><a href="lxwm.jsp">联系我们</a></li>
    </ul>
    <hr />
<p>版权所有：陕西商会 榆林分会&nbsp;&nbsp;&nbsp;&nbsp; <a
	href="yrzdmain.html">技术支持：上海悠得信息科技工作室</a></p>
</div>

</body>
</html>

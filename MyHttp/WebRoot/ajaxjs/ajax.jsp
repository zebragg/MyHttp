<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath",basePath);
%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<sx:head />
</head>

<body>
	<h3>异步校验（基于struts2实现ajax）</h3>
	<br>
	<div style="color:red">
		<h3>当输入用户为tom时表示该用户已经注册过，用户名输入框失去焦点后触发异步提交事件</h3>
	</div>
	<div id="checkinfo"></div>
	<s:url id="url" action="/ajax/checkAjax.action"></s:url>
	<form id="first" action="<%=basePath %>/ajax/checkAjax">
		<table>
			<tr>
				<td>
					<s:textfield name="username" label="用户名"></s:textfield><br />
					<s:password name="pwd" label="密     码"></s:password><br /> 
					<s:submit value="提交"></s:submit><br /></td>
			</tr>
			<tr>
				<td><sx:bind formId="first" sources="username" events="onblur"
						targets="checkinfo"></sx:bind></td>
			</tr>
		</table>
	</form>
</body>
</html>

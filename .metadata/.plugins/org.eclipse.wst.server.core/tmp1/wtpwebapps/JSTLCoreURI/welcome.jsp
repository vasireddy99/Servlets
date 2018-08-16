<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>


<c:out value="Welcome to JSTL"></c:out> <br><br>
<c:import url="one.jsp" var="a"></c:import> 

<c:out value="${a}"></c:out> <br><br>

<c:set var="h" scope="session" value="${10*20}"></c:set>

<c:out value="${h}"></c:out> <br>

<c:remove var="h" />
<c:out value="${h}"></c:out> <br>
<c:out value="${1}"></c:out>


<c:catch var="exception">
	<%
			int a = 0;
			int b = 10;
			int c = b / a;
	%>
</c:catch>
<c:if test="${exception!=null}">
	<p>
		The type of expression is : ${exception}<br> 
		There is an exception is : ${exception.message}<br>
</c:if>
<c:set var="marriage" scope="session" value="${4*6}"></c:set>
<p>
	Your age is
	<c:out value="${marriage}"></c:out> <br><br>
</p>

<c:choose>
	<c:when test="${marriage<=19}">Not allowed to marry</c:when>
	<c:when test="${marriage>=30}">Not allowed to marry</c:when>
	<c:otherwise>Marry and enjoy</c:otherwise>
</c:choose>

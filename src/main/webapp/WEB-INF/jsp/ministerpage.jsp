<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/reset.css">
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/MinisterPage.css">
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/header3.css">
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/footer.css">
<script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Libraries/jquery-2.0.2.min.js"></script>
<script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/Resources/scripts/signin.js"></script>
<body>
<jsp:include page="header.jsp" />
<div id="wrapper">
<c:forEach var="candidate" items="${candidate}" varStatus="candidateStatus">
	<c:if test="${candidateStatus.index%3==0}">
		<div class="Row">	
	</c:if>
	<div class="Box">
		<a href="#"><img src="<c:out value="${pageContext.request.contextPath}" />/Resources/images/party/<c:out value="${candidate.partyShortName}" />-RO.png" class="PartyImage" /></a>
		<div class="ImageWrapper"><img src="<c:out value="${pageContext.request.contextPath}" />/Resources/images/ministers/<c:out value="${candidate.name}" />.jpg" class="Image" /></div>
		<div class="Name"><a href="<c:out value="${pageContext.request.contextPath}" />/web/minister/<c:out value="${candidate.name}" />"><c:out value="${candidate.name}" /></a></div>
		<div class="Constituency"><a href="#"><c:out value="${candidate.constituency}" /></a></div>
		<div class="Party"><a href="#"><c:out value="${candidate.partyName}" /></a></div>
		<div class="Supporters"><c:out value="${candidate.supporters}" /></div>
	</div>
	<c:if test="${candidateStatus.index%3==2}">
		</div>
	</c:if>
</c:forEach>	
<div id="pager">
<ul>
<li><a href="<c:out value="${pageContext.request.contextPath}" />/web/ministers/list/1">1</a></li>
<li><a href="<c:out value="${pageContext.request.contextPath}" />/web/ministers/list/2">2</a></li>
<li>....</li>
<li><a href="<c:out value="${pageContext.request.contextPath}" />/web/ministers/list/"></a></li>
<li>....</li>
<li><a href="<c:out value="${pageContext.request.contextPath}" />/web/ministers/list/37">37</a></li>
<li><a href="<c:out value="${pageContext.request.contextPath}" />/web/ministers/list/38">38</a></a></li>
</ul>
</div>
</div>
<jsp:include page="footer.jsp" />
</body>

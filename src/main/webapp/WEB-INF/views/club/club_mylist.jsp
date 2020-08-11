<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%
request.setCharacterEncoding("UTF-8");
%>
<link href="./../resources/css/club.css" rel="stylesheet" type="text/css" media="all">
<body>
	<div class="hoc container clear">
	
	<c:forEach items="${lists }" var="row" varStatus="status" begin="0" end="4">
		<c:choose>
			<c:when test="${status.count eq 1}">
				<div class ="firstDiv">
			</c:when>
			<c:when test="${status.count eq 5}">
				<div class ="lastDiv">
			</c:when>
			<c:otherwise>
				<div class ="clubDiv">
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${row.c_idx == '' }">
				<table class="clubTable">
					<tr class="pad">
						<td></td>
					</tr>
					<tr>
						<td>
							<img class="myClubEmb" src="./../resources/img/bprologo2.png" style="width: 200px;height: auto; filter: opacity(.3) drop-shadow(0 0 0 white); alt="" />
						</td>
					</tr>
					<tr>
						<td  class="clubName" style="filter: opacity(.3) drop-shadow(0 0 0 white);">
							EMPTY
						</td>
					</tr>
					<tr class="pad">
						<td></td>
					</tr>
				</table>
			</c:when>
			<c:otherwise>
				<table class="clubTable" onclick="javascript:openClubView(${row.c_idx})" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;">
					<tr class="pad">
						<td></td>
					</tr>
					<tr>
						<td>
							<img class="myClubEmb" src="./../resources/uploadsFile/${row.c_emb }" alt="" />
						</td>
					</tr>
					<tr>
						<td  class="clubName">${row.c_name }</td>
					</tr>
					<tr class="pad">
						<td></td>
					</tr>
				</table>
			</c:otherwise>
		</c:choose>
			
		</div>  
	</c:forEach>	
			
	</div>
	
	<div style="height : 100px"></div>
</body>
<script>
	function openClubView(c_idx){
		window.open("../club/clubView.do?c_idx="+c_idx, '_blank',
				"width=1500,height=800, toolbar=no, menubar=no, resizable=no");
		
	}
</script>
</html>
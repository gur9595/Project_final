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
							<img class="myClubEmb" src="./../resources/img/empty.png" alt="" />
						</td>
					</tr>
					<tr>
						<td  class="clubName">
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
		<!-- <div class ="firstDiv clubDiv">
			<table class="clubTable" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;">
				<tr class="pad">
					<td></td>
				</tr>
				<tr>
					<td>
						<img class="myClubEmb" src="./../resources/img/emb1.png" alt="" />
					</td>
				</tr>
				<tr>
					<td  class="clubName">브라질리언 왁싱</td>
				</tr>
				<tr class="pad">
					<td></td>
				</tr>
			</table>
		</div> -->
		
		
		
		<!-- <div class ="clubDiv">
			<table class="clubTable" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;">
				<tr class="pad">
					<td></td>
				</tr>
				<tr>
					<td>
						<img class="myClubEmb" src="./../resources/img/emb3.png" alt="" />
					</td>
				</tr>
				<tr>
					<td  class="clubName">첼쉬</td>
				</tr>
				<tr class="pad">
					<td></td>
				</tr>
			</table>
		</div>
		
		<div class ="clubDiv">
			<table class="clubTable" onmouseenter="zoomIn(event)"onmouseleave="zoomOut(event)"style="cursor: pointer;">
				<tr class="pad">
					<td></td>
				</tr>
				<tr>
					<td>
						<img class="myClubEmb" src="./../resources/img/emb2.png" alt="" />
					</td>
				</tr>
				<tr>
					<td class="clubName">도떼기 시장</td>
				</tr>
				<tr class="pad">
					<td></td>
				</tr>
			</table>
		</div> -->
		
		
			
	</div>
	
	<div style="height : 100px"></div>
</body>
<script>
	 
</script>
</html>
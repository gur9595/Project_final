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
	
		<div class ="firstDiv clubDiv">
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
					<td  class="clubName">도르트문트 FC</td>
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
		</div>
		
		<div class ="lastDiv">
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
					<td  class="clubName">EMPTY</td>
				</tr>
				<tr class="pad">
					<td></td>
				</tr>
			</table>
		</div>
			
	</div>
	
	<div style="height : 100px"></div>
</body>
</html>
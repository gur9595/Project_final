<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<link href="./../resources/css/create.css" rel="stylesheet"	type="text/css" media="all">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<%
request.setCharacterEncoding("UTF-8");
String keyword = request.getParameter("keyword");
%>
<body>
	<table class="tables">
		<tr>
			<th>팀명</th>
			<td><input type="text" placeholder="클럽명을 입력해주세요" /></td>
		</tr>
		<tr>
			<th>아이콘</th>
			<td><input type="text" /></td>		
		</tr>
		<tr>
			<th>인원수 제한</th>
			<td style="width:70%">
				<select data-trigger="" class="form-control" name="choices-single-defaul">
                    <option placeholder="" value="">---인원수---</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    <option>11</option>
		        </select>
			</td>		
		</tr>
		<tr>
			<th>
				실력
			</th>
			<td>
				<select data-trigger="" class="form-control" name="choices-single-defaul">
                    <option placeholder="" value="">---실력---</option>
                    <option>최상</option>
                    <option>상</option>
                    <option>중상</option>
                    <option>중</option>
                    <option>중하</option>
                    <option>하</option>
		        </select>
			</td>
		</tr>
	</table>
	<button type="submit" id="joinBtn" class="btn btn-outline-success" style="margin-left:50%">클럽생성</button>
</body>
</html>
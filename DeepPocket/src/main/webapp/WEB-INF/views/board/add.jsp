<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>글작성 폼</h3>
<form action="/board/add" method="post" enctype="multipart/form-data">

<table border="1">
<tr><th>writer</th><td><input type="text" name="writer" value="${sessionScope.id }"readonly></td></tr>
<tr><th>title</th><td><input type="text" name="title"></td></tr>
<tr><th>content</th><td><textarea rows="15" cols="20" name="content"></textarea></td></tr>
<tr><th>hash</th><td><input type="text" name="hash"></td></tr>
<tr><th>img</th><td><input type="file" name="f"></td></tr>
<tr><th>save</th><td><input type="submit" value="작성"><a href="/board/">취소</a></td></tr>

</table>

</form>
</body>
</html>
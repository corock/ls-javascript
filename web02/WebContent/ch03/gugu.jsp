<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	function winclose() {
		// opener : 팝업창을 오픈한 메인창
		// 메인창의 dan 값을 팝업창의 dan 값으로 변경시킴
		opener.document.form1.dan.value = document.form1.dan.value;
		window.close();
	}
</script>

</head>
<body>

<%
	// request.getParameter("변수명")
	// get, post 방식 공용
	// Integer.paraseInt(스트링): 스트링을 숫자로 변환
	int dan = Integer.parseInt(request.getParameter("dan"));
%>
<h2><%= dan %>단</h2>
<%
	for (int i = 1; i <= 9; i++) {
		out.println(dan + "x" + i + "=" + dan * i + "<br>");
	}
%>
<!-- window.close(): 창닫기 -->
<form name="form1">
	메인창에 전달할 값을 입력하세요 <input type="text" name="dan">
	<input type="button" value="Close" onclick="winclose()">
</form>

</body>
</html>
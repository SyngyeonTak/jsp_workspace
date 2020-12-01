<%@ page contentType="text/html;charset=utf-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
<script>
function getMsg(){
	return "<%="안녕"%>";
}
<%
	out.print(getMsg()+"하세요");//에러나는 이유 getMsg()는 클라이언트 영역(js)
											//에 선언되므로 서버영역 (jsp)에서 인식할 수 없다.
											//먼저 서버영역이 먼저빠르다
											//마치 tomcat이 jsp영역을 먹고
											//클라이언트에 html(배설물...)을 전달
											//후에 클라이언트 브라우저가 클라이언트 영역을 인식
%>
</script>
</head>
<body>

</body>
</html>

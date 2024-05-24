<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<%
			request.setCharacterEncoding("utf-8");
		
			Enumeration<String> paramNames = request.getParameterNames();
			while (paramNames.hasMoreElements()) {
				String name = paramNames.nextElement();
				out.print("<tr><td>" + name + "</td>\n");
				String paramValue = request.getParameter(name);
				out.print("<td>" + paramValue + "</td></tr>\n");
			}
		%>
	</table>
</body>
</html>

<!-- 이 코드는 Java 서블릿에서 요청(request) 객체로부터 전달된 파라미터를 받아서 HTML 테이블 형태로 출력하는 예제입니다. 각 줄을 자세히 설명해 드리겠습니다.

Enumeration<String> paramNames = request.getParameterNames();

이 줄은 request 객체로부터 모든 파라미터 이름을 열거형(Enumeration)으로 가져옵니다.
request.getParameterNames() 메서드는 요청에 포함된 모든 파라미터의 이름을 반환합니다.
이 반환값을 Enumeration<String> 타입의 paramNames 변수에 저장합니다.
while (paramNames.hasMoreElements()) {

이 줄은 paramNames 열거형에 더 이상 요소가 없을 때까지 반복문을 실행합니다.
paramNames.hasMoreElements() 메서드는 열거형에 다음 요소가 있는지 확인하고, 있다면 true를 반환합니다.
String name = paramNames.nextElement();

이 줄은 열거형의 다음 요소(파라미터 이름)를 가져와 name 변수에 저장합니다.
paramNames.nextElement() 메서드는 다음 요소를 반환하며, 반환된 값은 String 타입의 파라미터 이름입니다.
out.print("<tr><td>" + name + "</td>\n");

이 줄은 현재 파라미터 이름을 HTML 테이블의 행(row)으로 출력합니다.
<tr> 태그는 새로운 행을, <td> 태그는 새로운 열을 의미합니다.
name 변수의 값을 <td> 태그 안에 넣어서 출력합니다.
\n은 줄바꿈을 의미합니다.
String paramValue = request.getParameter(name);

이 줄은 현재 파라미터 이름에 해당하는 값을 가져와 paramValue 변수에 저장합니다.
request.getParameter(name) 메서드는 지정된 이름의 파라미터 값을 반환합니다.
반환된 값은 String 타입입니다.
out.print("<td>" + paramValue + "</td></tr>\n");

이 줄은 현재 파라미터 값을 HTML 테이블의 열로 출력합니다.
이전에 출력한 파라미터 이름과 동일한 행에 값을 출력합니다.
<td> 태그 안에 paramValue 변수를 넣어서 출력하고, </tr> 태그로 행을 닫습니다.
\n은 줄바꿈을 의미합니다.
전체적으로 이 코드는 요청된 파라미터의 이름과 값을 HTML 테이블 형태로 출력하여 웹 페이지에 보여줍니다. 반복문을 통해 모든 파라미터를 하나씩 처리하며 테이블의 각 행에 파라미터 이름과 값을 출력합니다.






 -->
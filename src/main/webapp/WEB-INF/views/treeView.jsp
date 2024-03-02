<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="/resources/jquery_treeview/demo/jquery.cookie.js"></script>
<script src="/resources/jquery_treeview/jquery.treeview.js"></script>
<script src="/resources/jquery_treeview/jquery.treeview.edit.js"></script>
<script src="/resources/jquery_treeview/jquery.treeview.async.js"></script>
<link rel="stylesheet"
	href="/resources/jquery_treeview/jquery.treeview.css">
<link rel="stylesheet" href="/resources/jquery_treeview/demo/screen.css">
</head>
<body>
<c:forEach items="${list }" var="tree">
		${tree.level } | ${tree.deptNm } | ${tree.dept } | ${tree.parDept } | ${tree.leaf }<br />
	</c:forEach>
	<div>
	<ul id="codeList">
		<li id="0" class="hasChildren">		
			<span class="dept">전체</span>		
			<ul>											
			</ul>	
		</li>
	</ul>
 	<ul id="testList">
		<c:forEach items="${list }" var="test">
			<c:if test="${test.parDept eq null }">
				<li><a class="folder">${test.deptNm }</a>
			</c:if>
			<ul>
			<c:if test="${test.parDept ne null and test.leaf eq 0 }">
				<ul>
					<li><a class="folder">${test.deptNm }</a>
						<ul>
							<c:forEach items="${list }" var="li">
								<c:if test="${li.parDept eq test.dept }">
									<li id="${li.dept }">${li.deptNm }</li> <!-- 수정 필요 -->
								</c:if>
							</c:forEach>
						</ul>
					</li>
				</ul>
			</c:if>
		</c:forEach>
			</ul>
		</li>
	</ul>
	</div>
	
</body>
<script type="text/javascript">

	
	$("#testList").treeview({
		collapsed : true
	});
	$("#codeList").treeview({
		/* url : "/tree/treeView" + test,
		root : "codeList",
		ajax : {
			type : "get",
		},
		data : {
			test : "test"
		}, 
		complete : function (res) {
			console.log("res : ", res)
		}, */
		collapsed : true
	});

</script>
</html>
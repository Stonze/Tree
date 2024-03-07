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
	<div>
		<ul id="codeList">
			<li id="0"><a class="folder code">전체</a>	
				<ul id="start"><!-- 자식 노드가 들어올 공간--></ul> 	
			</li>
		</ul>
	</div>
	<div>
		dept : <input type="text" id="dept"/></br>
		parDept : <input type="text" id="parDept"/></br>
		deptNm : <input type="text" id="deptNm"/></br>
		<button>등록</button>
		<button>수정</button></br>
	</div>
</body>
<script type="text/javascript">
	$(function() {
		let dept = $('#dept');
		let parDept = $('#parDept');
		let deptNm = $('#deptNm');
		
		$.ajax({
			type : "post",
			url : "/tree/treeViewTest",
			success : function(res) {
				res.forEach(function(e, i) {
					  let start = $('#start');
					  let codeNm = e.deptNm;   
					  let codeId = e.dept;    
					  let parentId = e.parDept;    
					  let codeLvl = e.level;    
					  let li = '<li id="'+ codeId.trim() +'" lvl="' + codeLvl + '"><a class="file code">'+ codeNm +'</a></li>';    
					  // 1레벨은 그냥 추가    
					  // 다음 레벨부터는 상위 li의 클래스를 폴더로 바꾸고 자기 자신을 추가  
					  if(codeLvl == 1) {                              
					      start.append(li);
					  } else {    
					      let parentLi = $("li[id='"+ parentId +"']");
					      parentLi.find("a").removeClass("file");       
					      parentLi.find("a").addClass("folder");       
					      let bUl = parentLi.find("ul");
					        
					      // 하위 그룹이 없으면 ul로 추가    
					      if(bUl.length == 0) {       
					          parentLi.append("<ul></ul>"); // 새로운 ul 추가
					          bUl = parentLi.find("ul"); // 새로운 ul을 bUl로 지정
					          
					      }
					      
					      let parentIdVal = parentLi[0].id;
					      if (parentId == "DE_001") {
					       	let company = $('#DE_001');
					        company.append(li);
						} else {
						    $('#' + parentIdVal).append(li); // 이미 존재하는 ul에 li 추가
						}
					}
				});
				$("#codeList").treeview({
					collapsed : true
				});
				
				let liA = $('li').find('a');
				liA.click(function() {
					let dept = $(this).text();
					if (dept == '전체') {
						return;
					}
					$.ajax({
						url : "/tree/getDept",
						type : "post",
						contentType : "application/text; charset=utf-8",
						data : dept,
						success : function (res) {
							let json = JSON.parse(res);
							dept = $('#dept');
							parDept = $('#parDept');
							deptNm = $('#deptNm');
							dept.val(json.dept);
							parDept.val(json.parDept);
							deptNm.val(json.deptNm);
						}
						
					});
				});
			}
		});
	});
	
	
	
	
	
	
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Bootstrap Treeview -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-treeview/1.2.0/bootstrap-treeview.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-treeview/1.2.0/bootstrap-treeview.min.js"></script>
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
		<h5>INSERT</h5>
		<table>
			<tr>
				<td style="text-align : center;">dept</td>
				<td><input type="text" id="insertDept" value="DE_"/></td>
			</tr>
			<tr>
				<td style="text-align : center;">parDept</td>
				<td><input type="text" id="insertParDept" value="DE_"/></td>
			</tr>
			<tr>
				<td style="text-align : center;">deptNm</td>
				<td><input type="text" id="insertDeptNm"/></td>
			</tr>
		</table>
		<button type="button" id="insertBtn">등록</button>
	</div>
	<div>
		<h5>UPDATE/DELETE</h5><br/>
		<table>
				<tr>
				<td style="text-align : center;">dept</td>
				<td><input type="text" id="modDept"/></td>
			</tr>
			<tr>
				<td style="text-align : center;">parDept</td>
				<td><input type="text" id="modParDept"/></td>
			</tr>
			<tr>
				<td style="text-align : center;">deptNm</td>
				<td><input type="text" id="modDeptNm"/></td>
			</tr>
		</table>
		<button type="button" id="updateBtn">수정</button>
		<button type="button" id="deleteBtn">삭제</button><br/>
	</div>
</body>
<script type="text/javascript">
	$(function() {
		let dept = $('#modDept');
		let parDept = $('#modParDept');
		let deptNm = $('#modDeptNm');
		let insertBtn = $('#insertBtn');
		let updateBtn = $('#updateBtn');
		let deleteBtn = $('#deleteBtn');
		let liA;
		
		tree();
		
		function tree() {
			$.ajax({
				type : "post",
				url : "/tree/treeViewTest",
				success : function(res) {
					 $('#start').empty();
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
					
					liA = $('li').find('a');
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
								dept = $('#modDept');
								parDept = $('#modParDept');
								deptNm = $('#modDeptNm');
								dept.val(json.dept);
								parDept.val(json.parDept);
								deptNm.val(json.deptNm);
							}
							
						});
					});
					
					insertBtn.click(function() {
						console.log($(this).html());
						let insertDept = $('#insertDept').val();
						let insertParDept = $('#insertParDept').val();
						let insertDeptNm = $('#insertDeptNm').val();
						
						let insertObj = {
							dept : insertDept,	
							parDept : insertParDept,	
							deptNm : insertDeptNm	
						};
						
						$.ajax({
							url : "/tree/insertDept",
							type : "post",
							contentType : "application/json; charset=utf-8",
							data : JSON.stringify(insertObj),
							success : function(res) {
								console.log(res);
								tree();
							}
						});
						
					});
					
					updateBtn.click(function() {
						console.log($(this).html());
						let modDept = $('#modDept').val();
						let modParDept = $('#modParDept').val();
						let modDeptNm = $('#modDeptNm').val();
						
						let modObj = {
							dept : modDept,
							parDept : modParDept,
							deptNm : modDeptNm
						};
						
						$.ajax({
							url : "/tree/updateDept",
							type : "post",
							contentType : "application/json; charset=utf-8",
							data : JSON.stringify(modObj),
							success : function(res) {
								console.log(res);
								if (res == "success") {
									alert("수정이 완료되었습니다!");
								} else if (res == "faild") {
									alert("수정 실패!");
								}
							}
						});
					});
					
					deleteBtn.click(function() {
						if (confirm("정말 삭제하시겠습니까?")) {
							console.log($(this).html());
							
							let modDept = $('#modDept').val();
							let modParDept = $('#modParDept').val();
							let modDeptNm = $('#modDeptNm').val();
							
							let delObj = {
								dept : modDept,
								parDept : modParDept,
								deptNm : modDeptNm
							};
							
							$.ajax({
								url : "/tree/deleteDept",
								type : "post",
								contentType : "application/json; charset=utf-8",
								data : JSON.stringify(delObj),
								success : function(res) {
									console.log(res);
									if (res == "success") {
										alert("삭제가 완료되었습니다!");
									} else if(res == "faild") {
										alert("삭제 실패!");
									}
								}
							});
						}
						
						
					});
				}
			});
		}
		
		
	});
	
	
	
	
	
	
</script>
</html>
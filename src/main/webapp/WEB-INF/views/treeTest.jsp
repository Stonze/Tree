<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="/resources/bootstrap-treeview-master/src/js/bootstrap-treeview.js"></script>
</head>
<body>
	<div class="col-sm-3">
		<ul id="codeList" class="treeview">	
			<li id="0" class="hasChildren">		
				<span class="dept">전체</span>		
				<ul>											
				</ul>	
			</li>
		</ul>
	</div>
	<div class="col-sm-5">
		<table>
			<tr>
				<td>DEPT</td>
				<td><input type="text" id="dept"/></td>
			</tr>
			<tr>
				<td>PARDEPT</td>
				<td><input type="text" id="parDept"/></td>
			</tr>
			<tr>
				<td>DEPTNM</td>
				<td><input type="text" id="deptNm"/></td>
			</tr>
		</table>
		<button type="button" id="insertBtn">INSERT</button>
		<button type="button" id="updateBtn">UPDATE</button>
		<button type="button" id="deleteBtn">DELETE</button>
	</div>
</body>
<script type="text/javascript">
$(function() {
	
	let insertBtn = $('#insertBtn');
	let updateBtn = $('#updateBtn');
	let deleteBtn = $('#deleteBtn');
	
	let deptVal = $('#dept');
	let parDeptVal = $('#parDept');
	let deptNmVal = $('#deptNm');
	
    // 트리뷰 초기화
    $('#codeList').treeview({
        collapsed: true  // 초기에는 모든 노드가 축소된 상태로 시작
    });
    
    // 데이터를 로드하고 트리뷰 갱신
    function refreshTreeView() {
        $.ajax({
            type: "post",
            url: "/tree/treeViewTest", // 데이터를 로드하는 URL
            success: function(data) {
             // 성공적으로 데이터를 로드한 경우, 트리뷰를 갱신
             // 변환된 데이터를 담을 배열
				let treeData = [];

				// 레벨별 노드를 담을 객체
				let nodesByLevel = {};

				// 레벨별로 노드를 구성
				data.forEach(item => {
				    let node = {
				        text: item.deptNm,
				        id: item.dept,
				        nodes: []
				    };

				    // leaf 노드인 경우 leaf 속성 추가
				    if (item.leaf === 1) {
				        node.leaf = true;
				    }

				    // 레벨별 노드를 구성하기 위해 레벨별 객체에 추가
				    if (!nodesByLevel[item.level]) {
				        nodesByLevel[item.level] = [];
				    }
				    nodesByLevel[item.level].push(node);

				    // 상위 레벨에 노드를 추가
				    if (item.parDept === "") {
				        treeData.push(node); // 최상위 레벨
				    } else {
				        let parentNodes = nodesByLevel[item.level - 1];
				        let parentNode = parentNodes.find(parent => parent.id === item.parDept);
				        if (parentNode) {
				            parentNode.nodes.push(node);
				        }
				    }
				});
				
                $('#codeList').treeview({
                    data: treeData, // 로드한 데이터로 트리뷰를 갱신
                    onNodeExpanded: function(event, node) {
                        // "+" 아이콘을 클릭한 경우에 대한 처리
                        console.log("Clicked on the + icon");
                        // 여기에 추가적인 동작을 작성하세요
                        if (node.id != "DE_001") {
                        	$.ajax({
    							url : "/tree/getEmp",
    							type : "post",
    							contentType : "application/text; charset=utf-8",
    							data : node.id,
    							success : function (res) {
    								console.log(res);
    								for (let i  = 0; i < res.length; i++){
    									let newObj = {
    										text : res[i].empName,
    									};
	    								node.nodes.push(newObj);
    								}
    					            console.log(node.nodes);
    							}
    						});
                        }
                    },
                    
                    onNodeSelected: function(event, node) {
                        if (node.text != "회사") {
                        	$.ajax({
    							url : "/tree/getDept",
    							type : "post",
    							contentType : "application/text; charset=utf-8",
    							data : node.text,
    							success : function (res) {
    								let json = JSON.parse(res);
    								deptVal.val(json.dept);
    								parDeptVal.val(json.parDept);
    								deptNmVal.val(json.deptNm);
    							}
    							
    						});
						}
                        
                    }
                });
                
            },
            error: function(xhr, status, error) {
                console.error("Failed to load tree data:", error);
            }
        });
    }

    // 페이지 로딩 시 처음 한 번 트리뷰를 갱신
    refreshTreeView();
    
     insertBtn.click(function() {
         
         let insertObj = {
        		 dept : deptVal.val(),
        		 parDept : parDeptVal.val(),
        		 deptNm : deptNmVal.val(),
         }
         
         $.ajax({
				url : "/tree/insertDept",
				type : "post",
				contentType : "application/json; charset=utf-8",
				data : JSON.stringify(insertObj),
				success : function(res) {
					refreshTreeView(); // 트리뷰 갱신
				}
		});
         
        
     });
    
     updateBtn.click(function() {
    	 let updateObj = {
        		 dept : deptVal.val(),
        		 parDept : parDeptVal.val(),
        		 deptNm : deptNmVal.val(),
         }
    	 $.ajax({
				url : "/tree/updateDept",
				type : "post",
				contentType : "application/json; charset=utf-8",
				data : JSON.stringify(updateObj),
				success : function(res) {
					if (res == "success") {
						alert("수정이 완료되었습니다!");
						refreshTreeView(); // 트리뷰 갱신
					} else if (res == "faild") {
						alert("수정 실패!");
						refreshTreeView(); // 트리뷰 갱신
					}
				}
		});
        
     });
     deleteBtn.click(function() {
         let deleteObj = {
        		 dept : deptVal.val(),
        		 parDept : parDeptVal.val(),
        		 deptNm : deptNmVal.val(),
         }
         if (confirm("정말 삭제하시겠습니까? 삭제한 데이터는 복구할 수 없습니다!")) {
        	 $.ajax({
					url : "/tree/deleteDept",
					type : "post",
					contentType : "application/json; charset=utf-8",
					data : JSON.stringify(delObj),
					success : function(res) {
						if (res == "success") {
							alert("삭제가 완료되었습니다!");
							refreshTreeView(); // 트리뷰 갱신
						} else if(res == "faild") {
							alert("삭제 실패!");
							refreshTreeView(); // 트리뷰 갱신
						}
					}
				});
		}
     });
});
	
</script>
</html>
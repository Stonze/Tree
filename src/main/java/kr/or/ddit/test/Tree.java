package kr.or.ddit.test;

import kr.or.ddit.vo.Node;

public class Tree {
	 // 부모 노드에 자식 노드 추가
    public static void add(Node parent, Node child) {
        // 부모 노드의 자식 노드가 없다면
        if(parent.getLeftChild() == null)
            parent.setLeftChild(child);
        // 부모 노드의 자식 노드가 있다면
        else {
            // 자식 노드의 형제로 노드로 추가
            Node temp = parent.getLeftChild(); // 부모노드의 왼쪽 자식노드 temp 저장
            while(temp.getRightSibling() != null) // temp 오른쪽 노드가 null이 아니면 아래 반복
                temp = temp.getRightSibling(); // temp에 temp의 오른쪽 노드 저장
             
            temp.setRightSibling(child); // temp의 오른쪽 노드를 child로 set
        }
    }
    
    // 제거 기능 추가
    public static void delete(Node parent, Node child) {
    	// 부모 노드의 자식 노드가 없으면 삭제 x
    	// 노드 삭제 방법 알아보기
    }
    
     
    // 레벨 출력
    public static void printLevel(Node node, int level) {
        int depth = 0;
        Node tempChild = node;
        Node tempParent = node;
         
        // 레벨에 도달할 때까지 반복
        while(depth <= level) {
            if(depth == level) {
                // 해당 레벨의 노드가 존재한다면
                while(tempChild != null) {
                    // 데이터를 출력하고 형제노드로 이동한다.
                    System.out.print(tempChild.getData() + " ");
                    tempChild = tempChild.getRightSibling();
                }
                 
                // 부모 노드의 형제노드가 존재한다면
                // 그 노드의 자식 노드들도 출력해줘야 한다.
                if(tempParent.getRightSibling() != null) {
                    tempParent = tempParent.getRightSibling();
                    tempChild = tempParent.getLeftChild();
                } else
                    break;
            } else {
                // 깊이와 레벨이 맞지 않으면 부모 노드를 저장하고
                // 한단계 아래로 내려간다.
                tempParent = tempChild;
                tempChild = tempChild.getLeftChild();
                depth++;
            }
        }
    }
     
    // 모두 출력
    public static void printTree(Node node, int depth) {
        for(int i = 0; i < depth; i++)
            System.out.print(" ");
         
        // 데이터 출력
        System.out.println(node.getData());
         
        // 자식 노드가 존재한다면
        if(node.getLeftChild() != null)
            printTree(node.getLeftChild(), depth + 1);
         
        // 형제 노드가 존재한다면
        if(node.getRightSibling() != null)
            printTree(node.getRightSibling(), depth);
    }
}

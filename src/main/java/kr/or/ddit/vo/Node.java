package kr.or.ddit.vo;

import lombok.Data;

@Data
public class Node {
	  private char data;
	  private Node leftChild;
	  private Node rightSibling;
	  
	  public Node(char data) {
	        this.data = data;
	    }
}

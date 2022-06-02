package com.goodee.board;

// 클래스 JSON과 유사, 연관있는 변수와 함수들을 하나로 묶는거
// Dto - Data Transfer Object, 데이터를 담아다니는 클래스
// join을 할 경우에는 조인한 필드로 추가
// 아니면 테이블단위로 하나의 클래스를 만든다.
// 필드개수만큼 변수 추가, 필드명과 변수명이 같으면 좀 편하다.
public class BoardDto {
	// 초기화
	private String id="";
	private String title="";
	private String writer="";
	private String contents="";
	private String Wdate="";
	private String hit="";
	
	
	// getter/ setter : 클래서 안에서 마우스 오른쪽 누르고 source - generate getters and setters
	// int test;
	// public int getTest() { return this.test; }
	// public setTest(int test) { this.test = test; }

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWdate() {
		return Wdate;
	}
	public void setWdate(String wdate) {
		Wdate = wdate;
	}
	public String getHit() {
		return hit;
	}
	public void setHit(String hit) {
		this.hit = hit;
	}
	
	// 자바는 접근권한 타입 변수명 형태로 변수를 선언해야 한다.
	// 접근권한이 private 이면 클래스 외부에서 변수들에 접근을 못한다.
	// 그래서 접근할 수 있는 수단을 주어야 한다.
	// getter/setter라는 특별한 이름의 함수를 만들어야 한다.
	// 마우스 오른쪽 - source - generate getter/setter를 통해 만든다.
	
	
}

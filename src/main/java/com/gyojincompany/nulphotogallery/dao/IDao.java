package com.gyojincompany.nulphotogallery.dao;

import java.util.ArrayList;

import com.gyojincompany.nulphotogallery.dto.BoardDto;
import com.gyojincompany.nulphotogallery.dto.MemberDto;

public interface IDao {

	//멤버가입관련 dao 메서드
	public void joinDao(String mid, String mpw, String mname, String memail);//회원 가입 메서드
	public int checkIdDao(String mid);//회원가입시 기존 아이디 존재 여부 체크, 로그인 시 아이디 존재 여부 체크
	public int checkPwDao(String mid, String mpw);//로그인 시 아이디와 비밀번호 일치여부 체크
	public MemberDto loginInfoDao(String mid);//로그인 한 회원의 모든 정보를 DB에서 가져옴
	public void infoModify(String mpw, String mname, String memail, String mid);//회원정보 수정
	
	
	//질문게시판관련 dao 메서드
	public void writeDao(String qid, String qname, String qcontent, String qemail);//글쓰기
	public ArrayList<BoardDto> listDao();//리스트 가져오기
	public BoardDto viewDao(String qnum);//글 내용 보기
	public void boardModify(String qname, String qcontent, String qemail, String qnum);//글 수정하기
	public void deleteDao(String qnum);//글 삭제
	
	
}

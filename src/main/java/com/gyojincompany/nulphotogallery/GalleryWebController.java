package com.gyojincompany.nulphotogallery;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gyojincompany.nulphotogallery.*;
import com.gyojincompany.nulphotogallery.dao.IDao;
import com.gyojincompany.nulphotogallery.dto.BoardDto;
import com.gyojincompany.nulphotogallery.dto.MemberDto;



@Controller
public class GalleryWebController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/")
	public String home() {
		
		return "index";
	}
	
	@RequestMapping(value = "/index")
	public String index() {
		
		return "index";
	}
	
	@RequestMapping(value = "/spring")
	public String spring() {
		
		return "sub/spring";
	}
	
	@RequestMapping(value = "/summer")
	public String summer() {
		
		return "sub/summer";
	}
	
	@RequestMapping(value = "/video1")
	public String video1() {
		
		return "sub/video1";
	}
	
	@RequestMapping(value = "/video2")
	public String video2() {
		
		return "sub/video2";
	}
	
	@RequestMapping(value = "/autumn")
	public String autumn() {
		
		return "sub/autumn";
	}
	
	@RequestMapping(value = "/winter")
	public String winter() {
		
		return "sub/winter";
	}
	
	@RequestMapping(value = "/login")
	public String login() {
		
		return "menu/login";
	}
	
	@RequestMapping(value = "/join")
	public String join() {
		
		return "menu/join";
	}
	
	@RequestMapping(value = "/question")
	public String question() {
		
		return "menu/question";
	}
	
	@RequestMapping(value = "/profile")
	public String profile() {
		
		return "menu/profile";
	}
	
	@RequestMapping(value = "/contact")
	public String contact() {
		
		return "menu/contact";
	}
	
	@RequestMapping(value = "/joinOk", method=RequestMethod.POST)
	public String joinOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(mid);//아이디 존재 여부 체크->존재하면 1이 반환
		
		if (checkId != 1) {
		
			dao.joinDao(mid, mpw, mname, memail);
			
			HttpSession session = request.getSession();
			
			session.setAttribute("id", mid);
			session.setAttribute("name", mname);
			
			model.addAttribute("mname", mname);
			model.addAttribute("mid", mid);
		}
		
		model.addAttribute("checkId", checkId);
		
		return "menu/joinOk";
	}
	
	@RequestMapping(value = "/loginOk")
	public String loginOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(mid);//아이디 존재 여부 체크->존재하면 1이 반환
		
		int checkPw = dao.checkPwDao(mid, mpw);//아이디와 비밀번호 일치여부 확인->일치하면 1이 반환 
		
		model.addAttribute("checkId", checkId);
		model.addAttribute("checkPw", checkPw);		
		
			
		if (checkPw == 1) {
			
			MemberDto memberDto = dao.loginInfoDao(mid);
			
			HttpSession session = request.getSession();
			
			session.setAttribute("id", memberDto.getMid());
			session.setAttribute("name", memberDto.getMname());
			
			model.addAttribute("mid", memberDto.getMid());
			model.addAttribute("mname", memberDto.getMname());
			
			}					
			
		
		return "menu/loginOk";
	}
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();//세션 내용 삭제
		
		return "menu/login";
	}
	
	@RequestMapping(value = "/infoModify")
	public String infoModify(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		
		String sessionId = (String) session.getAttribute("id");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		MemberDto memberDto = dao.loginInfoDao(sessionId);
		
		model.addAttribute("memberDto", memberDto);		
		
		return "menu/infoModify";
	}
	
	@RequestMapping(value = "/infoModifyOk")
	public String infoModifyOk(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.infoModify(request.getParameter("mpw"), request.getParameter("mname"), request.getParameter("memail"), request.getParameter("mid"));
		
		MemberDto memberDto = dao.loginInfoDao(request.getParameter("mid"));
		
		model.addAttribute("memberDto", memberDto);
		
		return "menu/infoModifyOk";
	}
	
	@RequestMapping(value = "/write")
	public String write(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.writeDao(request.getParameter("qid"), request.getParameter("qname"), request.getParameter("qcontent"), request.getParameter("qemail"));
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/list")
	public String list(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<BoardDto> boardDtos = dao.listDao();
		
		
		model.addAttribute("qlist", boardDtos);
		
		return "menu/list";
	}
	
	@RequestMapping(value = "/qview")
	public String qview(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		IDao dao = sqlSession.getMapper(IDao.class);
		BoardDto boardDto = dao.viewDao(qnum);
		
		model.addAttribute("boardDto", boardDto);
		model.addAttribute("boardId", boardDto.getQid());
		
		return "menu/qview";
	}
	
	@RequestMapping(value = "/boardModify")
	public String boardModify(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		String qnum = request.getParameter("qnum");
		String qname = request.getParameter("qname");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		
		dao.boardModify(qname, qcontent, qemail, qnum);
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/delete")
	public String delete(HttpServletRequest request) {
		
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.deleteDao(qnum);
		
		return "redirect:list";	
	}
	
}

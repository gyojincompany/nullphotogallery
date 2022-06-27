package com.gyojincompany.nulphotogallery;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


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
	
}

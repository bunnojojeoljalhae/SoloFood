package com.web.honbab.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.honbab.find.service.FindService;
import com.web.honbab.review.service.ReviewService;

@Controller
public class MainContriller {
	@Autowired
	private ReviewService rs;
	
	@Autowired
	private FindService fs;
	
	//"http://localhost:8080/honbab/" 으로 (firstView) 들어가면 나오는 것 
	@RequestMapping(value = "/")
	public String defalutMain(Model model) {
		rs.reviewBestList(model);
		return "index";
	}
	@RequestMapping(value = "index")
	public String defalutMainIndex(Model model) {
		rs.reviewBestList(model);
		return "index";
	}
	@RequestMapping(value="/find")
	   public String defalutMain1(Model model) {
	      fs.findBestList(model);
	      return "index";
	   
	   }
	   
	   @RequestMapping(value="indexfind")
	   public String defalutMainIndex1(Model model) {
	      fs.findBestList(model);
	      return "index";
	   }
}

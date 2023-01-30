package com.today.bab.market1.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.today.bab.market1.model.service.Market1Service;
import com.today.bab.market1.model.service.QnaService;
import com.today.bab.market1.model.vo.ItemQna;
import com.today.bab.market2.model.vo.ItemPic;
import com.today.bab.market2.model.vo.SellItem;
import com.today.bab.member.model.vo.Member;

@Controller
@RequestMapping("/itemQna")
public class ItemQnaController {
	private QnaService service;
	private Market1Service ms;

	@Autowired
	public ItemQnaController(QnaService service,Market1Service ms) {
		super();
		this.service = service;
		this.ms=ms;
	}
	
	@RequestMapping("/insertQna.do")
	public String insertQna(Model m, ItemQna a,
			String iqContent, String memberId, int itemNo,
			String iqSecret, String iqSecret1) {

		if(iqSecret==null) {
			ItemQna i=ItemQna.builder()
					.iqContent(iqContent)
					.memberId(memberId)
					.itemNo(itemNo)
					.iqSecret(iqSecret1)
					.build();
		}else {
			ItemQna i=ItemQna.builder()
					.iqContent(iqContent)
//					.memberId(Member.builder().memberId(memberId).build())
					.memberId(memberId)
//					.itemNo(SellItem.builder().itemNo(itemNo).build())
					.itemNo(itemNo)
					.iqSecret(iqSecret)
					.build();
		}
		
		int result=service.insertQna(a);
		
		SellItem list=ms.marketdetail(itemNo);
		
		m.addAttribute("de",list);
		String file="";
		int count=0;
		for(ItemPic ii : list.getIpic()) {
			if(count++!=0) file+=",";
			file+=ii.getPicName();
		}
		m.addAttribute("picpic",file);
		m.addAttribute("qna",result);
		return "market1/detailMarketItem";
	}
	
	@RequestMapping("/selectQna.do")
	public String selectQna(Model m,int itemNo) {
		List<ItemQna> qq=service.selectQnaList(itemNo);
		m.addAttribute("qna",qq);
		return "market1/itemQna";
	}
	
	@RequestMapping("/delectQna.do")
	public String delectQna(int iqNo,int itemNo,Model m) {
		int result=service.delectQna(iqNo);
		
		List<ItemQna> qq=service.selectQnaList(itemNo);
		SellItem list=ms.marketdetail(itemNo);
		m.addAttribute("de",list);
		String file="";
		int count=0;
		for(ItemPic ii : list.getIpic()) {
			if(count++!=0) file+=",";
			file+=ii.getPicName();
		}
		m.addAttribute("picpic",file);
		m.addAttribute("qna",qq);
		
		return "market1/detailMarketItem";
	}
	
	
	
}

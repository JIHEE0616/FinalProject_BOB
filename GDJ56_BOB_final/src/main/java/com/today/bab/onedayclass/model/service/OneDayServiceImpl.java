package com.today.bab.onedayclass.model.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.today.bab.admin.model.vo.AdminMaster;
import com.today.bab.onedayclass.model.dao.OneDayDao;
import com.today.bab.onedayclass.model.vo.OneDayClass;

@Service
public class OneDayServiceImpl implements OneDayService {

	private SqlSessionTemplate session;
	private OneDayDao dao;
	
	@Autowired
	public OneDayServiceImpl(SqlSessionTemplate session,OneDayDao dao) {
		this.session = session;
		this.dao = dao;
	}

	@Override
	public List<OneDayClass> selectClassList() {
		return dao.selectClassList(session);
	}

	@Override
	public List<OneDayClass> selectMenuClassList(String type) {

		return dao.selectMenuClassList(session,type);
	}

	@Override
	public List<OneDayClass> selectSearchClass(Map<String, Object> param) {
		return dao.selectSearchClass(session,param);
	}

	@Override
	public int masterEndEnroll(AdminMaster m) {
		return dao.masterEndEnroll(session, m);
	}

	@Override
	public AdminMaster selectMastserById(String memberId) {
		return dao.selectMastserById(session, memberId);
	}

	@Override
	public int endclassEnroll(OneDayClass odc) {
		return dao.endclassEnroll(session, odc);
	}
	
	
	
	
	
	

}

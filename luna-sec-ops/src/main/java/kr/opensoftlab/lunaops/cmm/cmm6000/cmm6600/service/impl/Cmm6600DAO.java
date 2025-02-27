package kr.opensoftlab.lunaops.cmm.cmm6000.cmm6600.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import kr.opensoftlab.lunaops.com.dao.ComOslitsAbstractDAO;



@Repository("cmm6600DAO")
public class Cmm6600DAO extends ComOslitsAbstractDAO {

	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Map> selectCmm6600SignUsrList(Map<String, String> paramMap) throws Exception{
		return (List<Map>) list("cmm6600DAO.selectCmm6600SignUsrList", paramMap);
	}

	
	public void insertCmm6600SignLine(Map<String, String> paramMap) throws Exception{
		insert("cmm6600DAO.insertCmm6600SignLine",paramMap);
		
	}

	
	public void deleteCmm6600SignLine(Map<String, String> paramMap) throws Exception{
		delete("cmm6600DAO.deleteCmm6600SignLine",paramMap);
	}

	
	public void insertCmm6601SignInfo(Map<String, String> paramMap) throws Exception{
		insert("cmm6600DAO.insertCmm6601SignInfo",paramMap);
	}

	
	public int selectCmm6600SignListCnt(Map<String, String> paramMap) throws Exception {
		return (Integer) select("cmm6600DAO.selectCmm6601SignListCnt", paramMap);
	}

	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Map> selectCmm6600SignList(Map<String, String> paramMap) throws Exception {
		return (List<Map>) list("cmm6600DAO.selectCmm6601SignList",paramMap);
	}

	
	public int selectCmm6600UsrSignListCnt(Map<String, String> paramMap) throws Exception {
		return (Integer) select("cmm6600DAO.selectCmm6601UsrSignListCnt",paramMap);
	}

	
	@SuppressWarnings("rawtypes")
	public List selectCmm6600UsrSignList(Map<String, String> paramMap) throws Exception{
		return (List) list("cmm6600DAO.selectCmm6601UsrSignList",paramMap);
	}

	
	public int selectCmm6600MaxOrd(Map<String, String> paramMap) throws Exception{
		return (Integer) select("cmm6600DAO.selectCmm6600MaxOrd",paramMap);
	}

	
	@SuppressWarnings("rawtypes")
	public Map selectCmm6601SignInfo(Map<String, String> paramMap) throws Exception{
		return (Map) select("cmm6600DAO.selectCmm6601SignInfo",paramMap);
	}

	
	@SuppressWarnings("rawtypes")
	public Map selectCmm6600NextOrdInfo(Map<String, String> paramMap) throws Exception{
		return (Map) select("cmm6600DAO.selectCmm6600NextOrdInfo", paramMap);
	}

}

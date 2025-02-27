package kr.opensoftlab.lunaops.cmm.cmm6000.cmm6600.service;

import java.util.List;
import java.util.Map;


public interface Cmm6600Service {

	
	@SuppressWarnings("rawtypes")
	List<Map> selectCmm6600SignUsrList(Map<String, String> paramMap) throws Exception;

	
	void saveCmm6600SignLine(Map<String, String> paramMap) throws Exception;

	
	int selectCmm6600SignListCnt(Map<String, String> paramMap) throws Exception;

	
	@SuppressWarnings("rawtypes")
	List<Map> selectCmm6600SignList(Map<String, String> paramMap) throws Exception;

	
	int selectCmm6600UsrSignListCnt(Map<String, String> paramMap) throws Exception;

	
	@SuppressWarnings("rawtypes")
	List<Map> selectCmm6600UsrSignList(Map<String, String> paramMap) throws Exception;

	
	void insertCmm6601SignInfo(Map<String, String> paramMap) throws Exception;

	
	@SuppressWarnings("rawtypes")
	Map selectCmm6601SignInfo(Map<String, String> paramMap) throws Exception;
}

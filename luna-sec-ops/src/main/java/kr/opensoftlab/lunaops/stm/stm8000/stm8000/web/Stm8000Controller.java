package kr.opensoftlab.lunaops.stm.stm8000.stm8000.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import kr.opensoftlab.lunaops.com.vo.LoginVO;
import kr.opensoftlab.lunaops.stm.stm8000.stm8000.service.Stm8000Service;
import kr.opensoftlab.sdf.util.OslStringUtil;
import kr.opensoftlab.sdf.util.PagingUtil;
import kr.opensoftlab.sdf.util.RequestConvertor;



@Controller
public class Stm8000Controller {

	
	private static final Logger Log = Logger.getLogger(Stm8000Controller.class);

	
	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;
	
	
	@Resource(name = "stm8000Service")
	private Stm8000Service stm8000Service;
	
	
	
	@RequestMapping(value="/stm/stm8000/stm8000/selectStm8000View.do")
	public String selectStm8000View(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
		return "/stm/stm8000/stm8000/stm8000";
	}
	
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value="/stm/stm8000/stm8000/selectStm8000ListAjax.do")
	public ModelAndView selectStm8000ListAjax( HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
		try{
			
			Map<String, String> paramMap = RequestConvertor.requestParamToMapAddSelInfo(request, true);

			
			HttpSession ss = request.getSession();
			LoginVO loginVO = (LoginVO) ss.getAttribute("loginVO");
			paramMap.put("licGrpId", loginVO.getLicGrpId());
			
			
			String sortFieldId = (String) paramMap.get("sortFieldId");
			sortFieldId = OslStringUtil.replaceRegex(sortFieldId,"[^A-Za-z0-9+]*");
			String sortDirection = (String) paramMap.get("sortDirection");
			String paramSortFieldId = OslStringUtil.convertUnderScope(sortFieldId);
			paramMap.put("paramSortFieldId", paramSortFieldId);
			
			
			
			String _pageNo_str = paramMap.get("pagination[page]");
			String _pageSize_str = paramMap.get("pagination[perpage]");
			
			
			int totCnt = stm8000Service.selectStm8000ServerListCnt(paramMap);

			
			PaginationInfo paginationInfo = PagingUtil.getPaginationInfo(_pageNo_str, _pageSize_str);

			
			paginationInfo.setTotalRecordCount(totCnt);
			
			
			Map<String, Object> metaMap = PagingUtil.getPageReturnMap(paginationInfo);
			metaMap = PagingUtil.getPageSettingMap(metaMap, paginationInfo);
						
			
			List<Map> stm8000List = stm8000Service.selectStm8000ServerList(paramMap);
			
			
			metaMap.put("sort", sortDirection);
			metaMap.put("field", sortFieldId);
			
			
			model.addAttribute("data", stm8000List);
			model.addAttribute("meta", metaMap);

			
			model.addAttribute("errorYn", "N");
			model.addAttribute("message", egovMessageSource.getMessage("success.common.select"));

			return new ModelAndView("jsonView");
		}
		catch(Exception ex){
			Log.error("selectStm8000ListAjax()", ex);
			
			model.addAttribute("errorYn", "Y");
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.select"));
			return new ModelAndView("jsonView");
		}
	}
	
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value="/stm/stm8000/stm8000/selectStm8000RepoConnectCheckAjax.do")
	public ModelAndView selectStm8000RepoConnectCheckAjax( HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
		try{
			
			Map<String, String> paramMap = RequestConvertor.requestParamToMapAddSelInfo(request, true);
			
			
			HttpSession ss = request.getSession();
			LoginVO loginVO = (LoginVO) ss.getAttribute("loginVO");
			paramMap.put("licGrpId", loginVO.getLicGrpId());
			
			
			String connectResult = stm8000Service.selectStm8000SvnConnectCheck(paramMap);
			model.addAttribute("connectResult", connectResult);
			
			
			if(connectResult.isEmpty()) {
				model.addAttribute("errorYn", "Y");
				model.addAttribute("message", egovMessageSource.getMessage("fail.common.select"));
			}else {
				
				model.addAttribute("errorYn", "N");
				model.addAttribute("message", egovMessageSource.getMessage("success.common.select"));
			}
			return new ModelAndView("jsonView");
		}
		catch(Exception ex){
			Log.error("selectStm8000RepoConnectCheckAjax()", ex);
			
			model.addAttribute("errorYn", "Y");
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.select"));
			return new ModelAndView("jsonView");
		}
	}
	
	
	@RequestMapping(value="/stm/stm8000/stm8000/selectStm8001View.do")
	public String selectStm8001View(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
			return "/stm/stm8000/stm8000/stm8001";
	}

	
	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/stm/stm8000/stm8000/selectStm8000AuthCheckAjax.do")
	public ModelAndView selectStm8000AuthCheckAjax(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
		try{
			
			Map<String, String> paramMap = RequestConvertor.requestParamToMapAddSelInfo(request, true);
			
			
			HttpSession ss = request.getSession();
			LoginVO loginVO = (LoginVO) ss.getAttribute("loginVO");
			paramMap.put("licGrpId", loginVO.getLicGrpId());

			
			String paramPrjGrpId = (String) paramMap.get("prjGrpId");
			
			
			if(paramPrjGrpId == null || "".equals(paramPrjGrpId)) {
				paramPrjGrpId = (String) ss.getAttribute("selPrjGrpId");
			}
			
			
			String paramPrjId = (String) paramMap.get("prjId");
			
			
			if(paramPrjId == null || "".equals(paramPrjId)) {
				paramPrjId = (String) ss.getAttribute("selPrjId");
			}
			
			
			String authGrpId = (String) paramMap.get("authGrpId");
			
			
			if(authGrpId == null || "".equals(authGrpId)) {
				authGrpId = (String) ss.getAttribute("selAuthGrpId");
			}
			
			
			String usrId = (String) paramMap.get("usrId");
			
			
			if(usrId == null || "".equals(usrId)) {
				usrId = loginVO.getUsrId();
			}
			
			paramMap.put("prjGrpId", paramPrjGrpId);
			paramMap.put("prjId", paramPrjId);
			paramMap.put("usrId", usrId);
			
			
			Map result = stm8000Service.selectStm8000AuthCheck(paramMap);
			
			model.addAttribute("result", result);

			
			model.addAttribute("errorYn", "N");
			model.addAttribute("message", egovMessageSource.getMessage("success.common.insert"));

			return new ModelAndView("jsonView");
		}
		catch(Exception ex){
			Log.error("selectStm8000AuthCheckAjax()", ex);

			
			model.addAttribute("errorYn", "Y");
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.insert"));
			return new ModelAndView("jsonView");
		}
	}
	
	
	
	
	
	
	
	@RequestMapping(value="/stm/stm8000/stm8000/selectStm8002View.do")
	public String selectStm8002View(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
			return "/stm/stm8000/stm8000/stm8002";
	}
	
	
	@RequestMapping(value="/stm/stm8000/stm8000/insertStm8000ServerInfoAjax.do")
	public ModelAndView insertStm8000ServerInfoAjax(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
		try{
			
			Map<String, String> paramMap = RequestConvertor.requestParamToMapAddSelInfo(request, true);
			
			
			HttpSession ss = request.getSession();
			LoginVO loginVO = (LoginVO) ss.getAttribute("loginVO");
			paramMap.put("licGrpId", loginVO.getLicGrpId());

			
			stm8000Service.insertStm8000ServerInfo(paramMap);

			
			model.addAttribute("errorYn", "N");
			model.addAttribute("message", egovMessageSource.getMessage("success.common.insert"));

			return new ModelAndView("jsonView");
		}
		catch(Exception ex){
			Log.error("insertStm8000ServerInfoAjax()", ex);

			
			model.addAttribute("errorYn", "Y");
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.insert"));
			return new ModelAndView("jsonView");
		}
	}
	
	
	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/stm/stm8000/stm8000/selectStm8000ServerInfoAjax.do")
	public ModelAndView selectStm8000ServerInfoAjax(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
		try{
			
			Map<String, String> paramMap = RequestConvertor.requestParamToMapAddSelInfo(request, true);
			
			
			HttpSession ss = request.getSession();
			LoginVO loginVO = (LoginVO) ss.getAttribute("loginVO");
			paramMap.put("licGrpId", loginVO.getLicGrpId());
			
			
			Map repInfo = stm8000Service.selectStm8000ServerInfo(paramMap);
			
			model.addAttribute("repInfo",repInfo);
			
			
			model.addAttribute("errorYn", "N");
			model.addAttribute("message", egovMessageSource.getMessage("success.common.select"));
			
			return new ModelAndView("jsonView");
		}
		catch(Exception ex){
			Log.error("selectStm8000ServerInfoAjax()", ex);
			
			
			model.addAttribute("errorYn", "Y");
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.select"));
			return new ModelAndView("jsonView");
		}
	}
	
	
	@RequestMapping(value="/stm/stm8000/stm8000/updateStm8000ServerInfoAjax.do")
	public ModelAndView updateStm8000ServerInfoAjax(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
		try{
			
			Map<String, String> paramMap = RequestConvertor.requestParamToMapAddSelInfo(request, true);
			
			
			HttpSession ss = request.getSession();
			LoginVO loginVO = (LoginVO) ss.getAttribute("loginVO");
			paramMap.put("licGrpId", loginVO.getLicGrpId());
			
			
			stm8000Service.updateStm8000ServerInfo(paramMap);
			
			
			model.addAttribute("errorYn", "N");
			model.addAttribute("message", egovMessageSource.getMessage("success.common.update"));
			
			return new ModelAndView("jsonView");
		}
		catch(Exception ex){
			Log.error("updateStm8000ServerInfoAjax()", ex);
			
			
			model.addAttribute("errorYn", "Y");
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.update"));
			return new ModelAndView("jsonView");
		}
	}
	
	
	@RequestMapping(value="/stm/stm8000/stm8000/deleteStm8000ServerInfoAjax.do")
	public ModelAndView deleteStm8000ServerInfoAjax(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
		try{
			
			Map<String, String> paramMap = RequestConvertor.requestParamToMapAddSelInfo(request, true);
			
			
			HttpSession ss = request.getSession();
			LoginVO loginVO = (LoginVO) ss.getAttribute("loginVO");
			paramMap.put("licGrpId", loginVO.getLicGrpId());
			
			
			stm8000Service.deleteStm8000ServerInfo(paramMap);
			
			
			model.addAttribute("errorYn", "N");
			model.addAttribute("message", egovMessageSource.getMessage("success.common.delete"));
			
			return new ModelAndView("jsonView");
		}
		catch(Exception ex){
			Log.error("deleteStm8000ServerInfoAjax()", ex);
			
			
			model.addAttribute("errorYn", "Y");
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.delete"));
			return new ModelAndView("jsonView");
		}
	}
	
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value="/stm/stm8000/stm8000/selectStm8000RevisionListAjax.do")
	public ModelAndView selectStm8000RevisionListAjax(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
		try{
			
			Map<String, String> paramMap = RequestConvertor.requestParamToMapAddSelInfo(request, true);
			
			
			HttpSession ss = request.getSession();
			LoginVO loginVO = (LoginVO) ss.getAttribute("loginVO");
			paramMap.put("licGrpId", loginVO.getLicGrpId());
			
			
			
			String _pageNo_str = paramMap.get("pagination[page]");
			String _pageSize_str = paramMap.get("pagination[perpage]");
			
			
			List<Map> list = stm8000Service.selectStm8000RevisionList(paramMap);
			
			
			int totCnt = Integer.parseInt((String) list.get(0).get("totalCnt"));
			
			long searchStNum = (long)list.get(0).get("searchStNum");
			long searchEdNum = (long)list.get(0).get("searchEdNum");
			
			
			list.remove(0);

			
			PaginationInfo paginationInfo = PagingUtil.getPaginationInfo(_pageNo_str, _pageSize_str);

			
			paginationInfo.setTotalRecordCount(totCnt);
			paramMap = PagingUtil.getPageSettingMap(paramMap, paginationInfo);
			
			
			Map<String, Object> metaMap = PagingUtil.getPageReturnMap(paginationInfo);
			
			if(searchStNum < searchEdNum) {
				metaMap.put("searchStNum", searchStNum);
				metaMap.put("searchEdNum", searchEdNum);
			}else {
				metaMap.put("searchStNum", searchEdNum);
				metaMap.put("searchEdNum", searchStNum);
			}
			
			model.addAttribute("data", list);
			model.addAttribute("meta", metaMap);
			
			
			model.addAttribute("errorYn", "N");
			model.addAttribute("message", egovMessageSource.getMessage("success.common.select"));
			
			return new ModelAndView("jsonView");
		}
		catch(Exception ex){
			Log.error("selectStm8000RevisionListAjax()", ex);
			
			
			model.addAttribute("errorYn", "Y");
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.select"));
			return new ModelAndView("jsonView");
		}
	}
	
	
	@SuppressWarnings({ "rawtypes"})
	@RequestMapping(value="/stm/stm8000/stm8000/selectStm8000DirListAjax.do")
	public ModelAndView selectStm8000DirListAjax(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
		try{
			
			Map<String, String> paramMap = RequestConvertor.requestParamToMapAddSelInfo(request, true);
			
			List<Map> list = new ArrayList<Map>();
			
			
			HttpSession ss = request.getSession();
			LoginVO loginVO = (LoginVO) ss.getAttribute("loginVO");
			paramMap.put("licGrpId", loginVO.getLicGrpId());
			
			
			String paramPrjGrpId = (String) paramMap.get("prjGrpId");
			
			
			if(paramPrjGrpId == null || "".equals(paramPrjGrpId)) {
				paramPrjGrpId = (String) ss.getAttribute("selPrjGrpId");
			}
			
			
			String paramPrjId = (String) paramMap.get("prjId");
			
			
			if(paramPrjId == null || "".equals(paramPrjId)) {
				paramPrjId = (String) ss.getAttribute("selPrjId");
			}
			
			paramMap.put("prjGrpId", paramPrjGrpId);
			paramMap.put("prjId", paramPrjId);
			
			
			if(paramMap.containsKey("revision")==true && paramMap.containsKey("strgRepId")==true) {
				if(!paramMap.get("revision").isEmpty() && !paramMap.get("strgRepId").isEmpty()){
					list = stm8000Service.selectStm8000FileDirList(paramMap);
				}
			}
			
			model.addAttribute("list", list); 
			
			
			model.addAttribute("errorYn", "N");
			model.addAttribute("message", egovMessageSource.getMessage("success.common.select"));
			
			return new ModelAndView("jsonView");
		}
		catch(Exception ex){
			Log.error("selectStm8000DirListAjax()", ex);
			
			
			model.addAttribute("errorYn", "Y");
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.select"));
			return new ModelAndView("jsonView");
		}
	}
	
	
	@SuppressWarnings({ "rawtypes", "unchecked"})
	@RequestMapping(value="/stm/stm8000/stm8000/selectStm8000FileListAjax.do")
	public ModelAndView selectStm8000FileListAjax(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
		try{
			
			Map<String, String> paramMap = RequestConvertor.requestParamToMapAddSelInfo(request, true);
			
			List<Map> list = new ArrayList<Map>();
			
			
			HttpSession ss = request.getSession();
			LoginVO loginVO = (LoginVO) ss.getAttribute("loginVO");
			paramMap.put("licGrpId", loginVO.getLicGrpId());
			
			
			String paramPrjGrpId = (String) paramMap.get("prjGrpId");
			
			
			if(paramPrjGrpId == null || "".equals(paramPrjGrpId)) {
				paramPrjGrpId = (String) ss.getAttribute("selPrjGrpId");
			}
			
			
			String paramPrjId = (String) paramMap.get("prjId");
			
			
			if(paramPrjId == null || "".equals(paramPrjId)) {
				paramPrjId = (String) ss.getAttribute("selPrjId");
			}
			
			paramMap.put("prjGrpId", paramPrjGrpId);
			paramMap.put("prjId", paramPrjId);
			
			
			
			String _pageNo_str = paramMap.get("pagination[page]");
			String _pageSize_str = paramMap.get("pagination[perpage]");
			
			
			PaginationInfo paginationInfo = PagingUtil.getPaginationInfo(_pageNo_str, _pageSize_str);
			
			
			int totCnt = 0;
			
			
			if(paramMap.containsKey("revision")==true && paramMap.containsKey("strgRepId")==true) {
				if(!paramMap.get("revision").isEmpty() && !paramMap.get("strgRepId").isEmpty()){
					list = stm8000Service.selectStm8000FileDirList(paramMap);
					totCnt = list.size();
				}
			}
			
			
			paginationInfo.setTotalRecordCount(totCnt);
			
			
			Map<String, Object> metaMap = PagingUtil.getPageReturnMap(paginationInfo);
			metaMap = PagingUtil.getPageSettingMap(metaMap, paginationInfo);
			

			
			int firstIndex = (int) metaMap.get("firstIndex");
			int lastIndex = (int) metaMap.get("lastIndex");
			if(lastIndex > list.size()) {
				lastIndex = list.size();
			}
			list = list.subList(firstIndex, lastIndex);
			
			
			
			String sortFieldId = (String) paramMap.get("sortFieldId");
			String sortDirection = (String) paramMap.get("sortDirection");
			
			metaMap.put("sort", sortDirection);
			metaMap.put("field", sortFieldId);
			
			
			model.addAttribute("data", list); 
			
			model.addAttribute("meta", metaMap);
			
			
			model.addAttribute("errorYn", "N");
			model.addAttribute("message", egovMessageSource.getMessage("success.common.select"));
			
			return new ModelAndView("jsonView");
		}
		catch(Exception ex){
			Log.error("selectStm8000FileListAjax()", ex);
			
			
			model.addAttribute("errorYn", "Y");
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.select"));
			return new ModelAndView("jsonView");
		}
	}
	
	
	@RequestMapping(value="/stm/smt8000/stm8000/selectStm8003View.do")
	public String selectStm8003View(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
			return "/stm/stm8000/stm8000/stm8003";
	}
	
	
	@RequestMapping(value="/stm/stm8000/stm8000/selectStm8000RevisionFileInfoAjax.do")
	public ModelAndView selectStm8000RevisionFileInfoAjax(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
		try{
			
			Map<String, String> paramMap = RequestConvertor.requestParamToMapAddSelInfo(request, true);
			
			
			HttpSession ss = request.getSession();
			LoginVO loginVO = (LoginVO) ss.getAttribute("loginVO");
			paramMap.put("licGrpId", loginVO.getLicGrpId());

			
			String paramPrjGrpId = (String) paramMap.get("prjGrpId");
			
			
			if(paramPrjGrpId == null || "".equals(paramPrjGrpId)) {
				paramPrjGrpId = (String) ss.getAttribute("selPrjGrpId");
			}
			
			
			String paramPrjId = (String) paramMap.get("prjId");
			
			
			if(paramPrjId == null || "".equals(paramPrjId)) {
				paramPrjId = (String) ss.getAttribute("selPrjId");
			}
			
			paramMap.put("prjGrpId", paramPrjGrpId);
			paramMap.put("prjId", paramPrjId);
			
			
			String contentInfo = stm8000Service.selectStm8000RevisionFileInfo(paramMap);
			model.addAttribute("contentInfo", contentInfo);
			
			
			model.addAttribute("errorYn", "N");
			model.addAttribute("message", egovMessageSource.getMessage("success.common.select"));
			
			return new ModelAndView("jsonView");
		}
		catch(Exception ex){
			Log.error("deleteStm8000ServerInfoAjax()", ex);
			
			
			model.addAttribute("errorYn", "Y");
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.select"));
			return new ModelAndView("jsonView");
		}
	}
	
	
	@RequestMapping(value="/stm/stm8000/stm8000/selectStm8004View.do")
	public String selectStm8004View(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
			return "/stm/stm8000/stm8000/stm8004";
	}
	
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value="/stm/stm8000/stm8000/selectStm8000FileRevisionListAjax.do")
	public ModelAndView selectStm8000FileRevisionListAjax(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
		try{
			
			Map<String, String> paramMap = RequestConvertor.requestParamToMapAddSelInfo(request, true);
			
			
			HttpSession ss = request.getSession();
			LoginVO loginVO = (LoginVO) ss.getAttribute("loginVO");
			paramMap.put("licGrpId", loginVO.getLicGrpId());
			
			
			String paramPrjGrpId = (String) paramMap.get("prjGrpId");
			
			
			if(paramPrjGrpId == null || "".equals(paramPrjGrpId)) {
				paramPrjGrpId = (String) ss.getAttribute("selPrjGrpId");
			}
			
			
			String paramPrjId = (String) paramMap.get("prjId");
			
			
			if(paramPrjId == null || "".equals(paramPrjId)) {
				paramPrjId = (String) ss.getAttribute("selPrjId");
			}
			
			paramMap.put("prjGrpId", paramPrjGrpId);
			paramMap.put("prjId", paramPrjId);
			
			
			if(paramMap.containsKey("linkUrl")==false || paramMap.containsKey("linkId")==false || paramMap.containsKey("linkPw")==false) {
				Map repInfo = stm8000Service.selectStm8000ServerInfo(paramMap);
				paramMap.put("linkUrl", (String)repInfo.get("strgRepUrl"));
				paramMap.put("linkId", (String)repInfo.get("strgUsrId"));
				if("01".equals(repInfo.get("strgTypeCd"))) {
					
					paramMap.put("linkPw", (String)repInfo.get("strgUsrPw"));
				}else {
					
					paramMap.put("linkPw", (String)repInfo.get("strgKey"));
				}
				
			}
			
			
			
			String _pageNo_str = paramMap.get("pagination[page]");
			String _pageSize_str = paramMap.get("pagination[perpage]");
						
			
			
			List<Map> list = stm8000Service.selectStm8000RevisionList(paramMap);
			
			
			int totCnt = Integer.parseInt((String) list.get(0).get("totalCnt"));
			
			
			list.remove(0);
			
			
			PaginationInfo paginationInfo = PagingUtil.getPaginationInfo(_pageNo_str, _pageSize_str);

			
			paginationInfo.setTotalRecordCount(totCnt);
			paramMap = PagingUtil.getPageSettingMap(paramMap, paginationInfo);
			
			
			Map<String, Object> metaMap = PagingUtil.getPageReturnMap(paginationInfo);
			
			model.addAttribute("data", list);
			model.addAttribute("meta", metaMap);
			
			
			model.addAttribute("errorYn", "N");
			model.addAttribute("message", egovMessageSource.getMessage("success.common.select"));
			
			return new ModelAndView("jsonView");
		}
		catch(Exception ex){
			Log.error("selectStm8000FileRevisionListAjax()", ex);
			
			
			model.addAttribute("errorYn", "Y");
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.select"));
			return new ModelAndView("jsonView");
		}
	}
	
	
	@RequestMapping(value="/stm/stm8000/stm8000/selectStm8005View.do")
	public String selectStm8005View(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
			return "/stm/stm8000/stm8000/stm8005";
	}
	
	
	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/stm/stm8000/stm8000/selectStm8000FileDiffInfoAjax.do")
	public ModelAndView selectStm8000FileDiffInfoAjax(HttpServletRequest request, HttpServletResponse response, ModelMap model ) throws Exception {
		try{
			
			Map<String, String> paramMap = RequestConvertor.requestParamToMapAddSelInfo(request, true);
			
			
			HttpSession ss = request.getSession();
			LoginVO loginVO = (LoginVO) ss.getAttribute("loginVO");
			paramMap.put("licGrpId", loginVO.getLicGrpId());
			
			
			String paramPrjGrpId = (String) paramMap.get("prjGrpId");
			
			
			if(paramPrjGrpId == null || "".equals(paramPrjGrpId)) {
				paramPrjGrpId = (String) ss.getAttribute("selPrjGrpId");
			}
			
			
			String paramPrjId = (String) paramMap.get("prjId");
			
			
			if(paramPrjId == null || "".equals(paramPrjId)) {
				paramPrjId = (String) ss.getAttribute("selPrjId");
			}
			
			paramMap.put("prjGrpId", paramPrjGrpId);
			paramMap.put("prjId", paramPrjId);
			
			
			if(paramMap.containsKey("linkUrl")==false || paramMap.containsKey("linkId")==false || paramMap.containsKey("linkPw")==false) {
				Map repInfo = stm8000Service.selectStm8000ServerInfo(paramMap);
				paramMap.put("linkUrl", (String)repInfo.get("strgRepUrl"));
				paramMap.put("linkId", (String)repInfo.get("strgUsrId"));
				if("01".equals(repInfo.get("strgTypeCd"))) {
					
					paramMap.put("linkPw", (String)repInfo.get("strgUsrPw"));
				}else {
					
					paramMap.put("linkPw", (String)repInfo.get("strgKey"));
				}
				
			}
			
			
			String beforeRevision = paramMap.get("diffRevision01");
			
			String afterRevision = paramMap.get("diffRevision02");
			
			
			paramMap.put("revision", beforeRevision);
			
			String beforeRevisionContent = stm8000Service.selectStm8000RevisionFileInfo(paramMap);
			
			paramMap.put("revision", afterRevision);
			
			String afterRevisionContent = stm8000Service.selectStm8000RevisionFileInfo(paramMap);
			
			model.addAttribute("beforeRevision", beforeRevision);
			model.addAttribute("afterRevision", afterRevision);
			
			model.addAttribute("beforeContent", beforeRevisionContent);
			model.addAttribute("afterContent", afterRevisionContent);
			
			
			model.addAttribute("errorYn", "N");
			model.addAttribute("message", egovMessageSource.getMessage("success.common.select"));
			
			return new ModelAndView("jsonView");
		}
		catch(Exception ex){
			Log.error("selectStm8000FileDiffInfoAjax()", ex);
			
			
			model.addAttribute("errorYn", "Y");
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.select"));
			return new ModelAndView("jsonView");
		}
	}
	
}

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/jsp/lunaops/top/header.jsp" />
<jsp:include page="/WEB-INF/jsp/lunaops/top/top.jsp" />
<jsp:include page="/WEB-INF/jsp/lunaops/top/aside.jsp" />

<div class="kt-portlet kt-portlet--mobile">
	<div class="kt-portlet__head kt-portlet__head--lg">
		<div class="kt-portlet__head-label">
			<h4 class="kt-font-boldest kt-font-brand">
				<i class="fa fa-th-large kt-margin-r-5"></i><c:out value="${sessionScope.selMenuNm}" />
			</h4>
		</div>
	</div>
</div>
<div class="row">
	
	<div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">
		<div class="kt-portlet osl-content__border--light kt-margin-b-20" id="prj3100DocTreeMenu">
			<div class="kt-portlet__head kt-portlet__head--lg">
				<div class="kt-portlet__head-label">
					<h5 class="kt-font-boldest kt-font-brand">
						<i class="fas fa-sitemap kt-margin-r-5"></i>산출물 메뉴 목록
					</h5>
				</div>
				
				<div class="kt-portlet__head-toolbar">
					<div class="kt-portlet__head-wrapper">
						<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="select" title="산출물 메뉴 목록 조회" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="1" data-original-title="산출물 메뉴 목록 조회">
							<i class="fa fa-list"></i><span>조회</span>
						</button>
					</div>
					<div class="kt-portlet__head-group">
						<a href="#" class="btn btn-sm btn-icon btn-clean btn-icon-md osl-tree-action" data-toggle="kt-tooltip" title="전체 펼치기" data-tree-id="prj3100DocTree" data-tree-action="allNodeOpen"><i class="fa fa-plus"></i></a> 
						<a href="#" class="btn btn-sm btn-icon btn-clean btn-icon-md osl-tree-action" data-toggle="kt-tooltip" title="전체 접기" data-tree-id="prj3100DocTree" data-tree-action="allNodeClose"><i class="fa fa-minus"></i></a> 
						<a href="#" data-ktportlet-tool="toggle" class="btn btn-sm btn-icon btn-clean btn-icon-md"><i class="fa fa-chevron-down"></i></a>
					</div>
				</div>
				
			</div>
			
			<div class="kt-portlet__head kt-portlet__head--lg">
				<div class="kt-portlet__head-toolbar osl-margin-left--auto">
					<div class="kt-portlet__head-group">
						<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="selectAtchFileDownAll" title="확정 문서 전체 다운로드" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="selectAtchFileDownAll" tabindex="1" data-original-title="확정 문서 전체 다운로드">
							<i class="fas fa-download"></i><span>확정 문서 전체 다운로드</span>
						</button>
					</div>
				</div>
			</div>
			
			<div class="kt-portlet__body">
				<div class="row">
					<div class="col-12">
						<div class="osl-tree-search" data-tree-id="prj3100DocTree"></div>
					</div>
				</div>
				<div class="kt-separator kt-separator--space-sm kt-separator--border-solid"></div>
				<div class="row">
					<div class="col-12">
						<div class="osl-tree kt-scroll" data-height="410" id="prj3100DocTree"></div>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	
	
	<div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12">
		
		<div class="kt-portlet">
			<div class="kt-blog-grid">
				<div class="kt-portlet__head kt-portlet__head--lg">
					<div class="kt-portlet__head-label">
						<h5 class="kt-font-boldest kt-font-brand">
							<i class="fas fa-info-circle kt-margin-r-5"></i>산출물 정보
						</h5>
					</div>
					
					<div class="kt-portlet__head-toolbar">
						<div class="kt-portlet__head-wrapper">
							<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="selectDocInfo" title="산출물 정보 조회" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="selectDocInfo" tabindex="1" data-original-title="산출물 정보 조회">
								<i class="fa fa-list"></i><span>조회</span>
							</button>
							<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="docFormFileZipDown" title="산출물 양식 다운로드" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="docFormFileZipDown" tabindex="3" data-original-title="산출물 양식 다운로드"> 
								<i class="fa fa-edit"></i><span>양식 다운로드</span>
							</button>
						</div>
					</div>
					
				</div>

				<div class="kt-portlet__body">
					<form class="kt-form" id="frPrj3100">
						<input type="hidden" id="docFormFileId" name="docFormFileId">
						<input type="hidden" id="docFormConfFileId" name="docFormConfFileId"> 
						<input type="hidden" id="docAtchFileId" name="docAtchFileId">
						<input type="hidden" id="docWaitFileId" name="docWaitFileId">
						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<label><i class="fa fa-align-left kt-margin-r-5"></i><span data-lang-cd="prj3100.label.docId">산출물 ID</span></label> 
									<input type="text" class="form-control" placeholder="산출물 ID" name="docId" id="docId" readonly="readonly">
								</div>
							</div>
							<div class="col-6">
								<div class="form-group">
									<label><i class="fa fa-edit kt-margin-r-5"></i><span data-lang-cd="prj3100.label.docNm">산출물 명</span></label> 
									<input type="text" class="form-control" placeholder="산출물 명" name="docNm" id="docNm" readonly="readonly">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<label><i class="fa fa-check-square kt-margin-r-5"></i><span data-lang-cd="prj3100.label.docUseCd">사용유무</span></label> 
									<input type="text" class="form-control" placeholder="사용유무" name="useNm" id="useNm" readonly="readonly">
								</div>
							</div>
							<div class="col-6">
								<div class="form-group">
									<label><i class="fa fa-list-ol kt-margin-r-5"></i><span data-lang-cd="prj3100.label.docOrd">순번</span></label> 
									<input type="text" class="form-control" placeholder="순번" name="ord" id="ord" readonly="readonly">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<label><i class="fas fa-calendar-alt kt-margin-r-5"></i><span data-lang-cd="prj3100.label.docEdDtm">산출물 마감일</span></label> 
									<input type="text" class="form-control" placeholder="산출물 마감일" name="docEdDtm" id="docEdDtm" readonly="readonly">
								</div>
							</div>
							<div class="col-6">
								<div class="form-group">
									<label><i class="fa fa-project-diagram kt-margin-r-5"></i><span data-lang-cd="prj3100.label.signUseCd">결재 사용 유무</span></label> 
									<input type="text" class="form-control" placeholder="결재 사용 유무" name="signUseNm" id="signUseNm" readonly="readonly">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-12">
								<div class="form-group-last">
									<label><i class="fa fa-edit kt-margin-r-5"></i><span data-lang-cd="prj3100.label.docDesc">비고</span></label>
									<div class="form-control h-100 osl-min-height--12rem" id="docDesc"></div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		
		
		<div class="kt-portlet kt-margin-t-20">
			<div class="kt-blog-grid">
				<div class="kt-portlet__head kt-portlet__head--lg">
					<div class="kt-portlet__head-label">
						<h5 class="kt-font-boldest kt-font-brand">
							<i class="fas fa-file-invoice kt-margin-r-5"></i>산출물 파일 관리
						</h5>
					</div>
					
					<div class="kt-portlet__head-toolbar">
						<div class="kt-portlet__head-wrapper">
							<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="selectFiles" title="산출물 파일 관리 조회" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="selectFiles" tabindex="1" data-original-title="산출물 파일 관리 조회">
								<i class="fa fa-list"></i><span>조회</span>
							</button>
						</div>
					</div>
					
				</div>

				<div class="kt-portlet__body">
					<div class="row">
						<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
							<div class="kt-portlet--contain">
								<div class="kt-portlet__head kt-portlet__head--lg border osl-border-bottom--none">
									<div class="kt-portlet__head-label">
										<h5 class="kt-font-boldest kt-font-brand">확정 파일</h5>
									</div>
									
									<div class="kt-portlet__head-toolbar">
										<div class="kt-portlet__head-toolbar-wrapper">
											<div class="dropdown dropdown-inline">
												<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm btn-elevate btn-elevate-air" data-toggle="dropdown" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="1">
													<i class="fa fa-bars kt-padding-r-0"></i>
												</button>
												<div class="dropdown-menu dropdown-menu-right">
													<div class="dropdown-item osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="signAtchFile" title="확정 파일 결재 승인" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="signAtchFile" tabindex="1" data-original-title="확정 파일 결재 승인">
														<i class="fas fa-file-signature kt-font-brand"></i><span>결재 승인</span>
													</div>
													<div class="dropdown-item osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="signAtchFileRjt" title="확정 파일 결재 반려" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="signAtchFileRjt" tabindex="1" data-original-title="확정 파일 결재 반려">
														<i class="fas fa-file-excel kt-font-brand"></i><span>결재 반려</span>
													</div>
													<div class="dropdown-item osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="insertAtchFile" title="확정 파일 등록" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="insertAtchFile" tabindex="1" data-original-title="확정 파일 등록">
														<i class="fa fa-plus kt-font-brand"></i><span>등록</span>
													</div>
													<div class="dropdown-item osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="selectAtchFileDown" title="확정 파일 전체 다운로드" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="selectAtchFileDown" tabindex="1" data-original-title="확정 파일 전체 다운로드">
														<i class="fas fa-download kt-font-brand"></i></i><span>확정 파일 다운로드</span>
													</div>
													<input type="file" class="kt-hide" id="atchFileBtn" multiple="multiple" name="atchFileBtn">
												</div>
											</div>
										</div>
									</div>
									
								</div>
								<div class="kt-portlet__body kt-padding-10 kt-scroll border osl-radius-bottom" data-height="350" id="confirmationList">
									
								
								</div>
							</div>
						</div>
						<div
							class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 kt-margin-t-20-tablet kt-margin-t-20-mobile">
							<div class="kt-portlet--contain">
								<div class="kt-portlet__head kt-portlet__head--lg border osl-border-bottom--none">
									<div class="kt-portlet__head-label">
										<h5 class="kt-font-boldest kt-font-brand">확정 대기 파일</h5>
									</div>
									
									<div class="kt-portlet__head-toolbar">
										<div class="kt-portlet__head-toolbar-wrapper">
											<div class="dropdown dropdown-inline">
												<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm btn-elevate btn-elevate-air" data-toggle="dropdown" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="1">
													<i class="fa fa-bars kt-padding-r-0"></i>
												</button>
												<div class="dropdown-menu dropdown-menu-right">
													<div class="dropdown-item osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="insertWaitFile" title="확정 대기 파일 등록" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="insertWaitFile" tabindex="1" data-original-title="확정 대기 파일 등록">
														<i class="fa fa-plus kt-font-brand"></i><span>등록</span>
													</div>
													<div class="dropdown-item osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="selectWaitFileDown" title="확정 대기 파일 전체 다운로드" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="selectWaitFileDown" tabindex="2" data-original-title="확정 대기 파일 전체 다운로드">
														<i class="fas fa-download kt-font-brand"></i><span>전체 다운로드</span>
													</div>
													<input type="file" class="kt-hide" id="waitFileBtn" multiple="multiple" name="waitFileBtn">
												</div>
											</div>
										</div>
									</div>
									
								</div>
								<div class="kt-portlet__body kt-padding-10 kt-scroll border osl-radius-bottom" data-height="350" id="waitConfirmationList">
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="kt-portlet kt-margin-t-20">
			<div class="kt-blog-grid">
				<div class="kt-portlet__head kt-portlet__head--lg">
					<div class="kt-portlet__head-label">
						<h5 class="kt-font-boldest kt-font-brand">
							<i class="fas fa-file-signature kt-margin-r-5"></i>산출물 연결 관리
						</h5>
					</div>
					
					<div class="kt-portlet__head-toolbar">
						<div class="kt-portlet__head-wrapper">
							<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="prj3002PrjTable" data-datatable-action="select" title="산출물 연결 관리 조회" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="1" data-original-title="산출물 연결 관리 조회"> 
								<i class="fa fa-list"></i><span>조회</span>
							</button>
							<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="prj3002PrjTable" data-datatable-action="insert" title="산출물 연결 관리 연결" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="insert" tabindex="3" data-original-title="산출물 연결 관리 연결"> 
								<i class="fa fa-edit"></i><span>연결</span>
							</button>
							<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="prj3002PrjTable" data-datatable-action="delete" title="산출물 연결 관리 연결 제거" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="delete" tabindex="4" data-original-title="산출물 연결 관리 연결 제거">
								<i class="fa fa-trash-alt"></i><span>연결 제거</span>
							</button>
						</div>
					</div>
					
				</div>

				<div class="kt-portlet__body">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="osl-datatable-search" data-datatable-id="prj3002PrjTable"></div>
						</div>
					</div>
					<div class="kt_datatable" id="prj3002PrjTable"></div>
				</div>
			</div>
		</div>
		
	</div>
	
</div>

<script>
"use strict";
var OSLPrj3000Popup = function () {
	
	var formId = "frPrj3100";
	
	
	var treeObj = '';
	
	
	var docId = '';
	
	
	var prj3002PrjTable = "prj3002PrjTable";
	
	var atchFileId = '';
	
	var documentSetting = function(){
		
		fileDropDown();
		
		
		new KTPortlet('prj3100DocTreeMenu', $.osl.lang("portlet"));
		
		
		
		
		
		
		treeObj = $.osl.tree.setting("prj3100DocTree",{
			data:{
				url:"<c:url value='/prj/prj3000/prj3100/selectPrj3100DocListAjax.do'/>",
				key: "docId",
				pKey: "upperDocId",
				labelKey: "docNm"
			},
			search:{
				
				case_insensitive : true,
				
				show_only_matches: true,
				
				show_only_matches_children: true,
			},
			callback:{
				onclick: function(treeObj,selNode){
					
					
					selectDocInfo(selNode.original);
					
					
					selectFormFileList();
				},
				init: function(treeObj,data){
					
				}
			},
			contextmenu: {
				display: ["allNodeOpen","allNodeClose","selNodeOpen","selNodeClose","docFormFileZipDown","selectAtchFileDown","selectWaitFileDown"],
				items: {
					docFormFileZipDown : {
            			"separator_before": true,
            			"separator_after": false,
            			"label": $.osl.lang("prj3100.contextmenu.formFileDownload"),
            			"title": $.osl.lang("prj3100.contextmenu.formFileDownload"),
            			"actionFn": "docFormFileZipDown"
            		},
            		selectAtchFileDown : {
            			"separator_before": false,
            			"separator_after": false,
            			"label": $.osl.lang("prj3100.contextmenu.atchFileDownload"),
            			"title": $.osl.lang("prj3100.contextmenu.atchFileDownload"),
            			"actionFn": "selectAtchFileDown"
            		},
            		selectWaitFileDown : {
            			"separator_before": false,
            			"separator_after": true,
            			"label": $.osl.lang("prj3100.contextmenu.waitFileDownload"),
            			"title": $.osl.lang("prj3100.contextmenu.waitFileDownload"),
            			"actionFn": "selectWaitFileDown"
            		},
            	}
			},
			actionFn : {
				
				"selectDocInfo" : function(obj){
					
					
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					
					var selectNode = treeObj.jstree().get_node(selectNodeIds[0]);
					var nodeData = selectNode.original;
					
					
					selectDocInfo(nodeData);
				},
				
				"insertAtchFile" : function(obj){
					
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					var insertAtchFile = $("#atchFileBtn");
					insertAtchFile.trigger("click");
					
				},
				
				"insertWaitFile" : function(obj){
					
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					var insertWaitFile = $('#waitFileBtn');
					insertWaitFile.trigger("click");
					
				},
				
				"selectFiles" : function(obj){
					
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					
					selectFormFileList();
				},
				
				"docFormFileZipDown" : function(obj){
					
					
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}

					var docId = $('#docId').val();
					
					var atchFileId = $('#docFormConfFileId').val();
					 
					var fileData = '';
					var ajaxObj = new $.osl.ajaxRequestAction(
							{"url":"<c:url value='/prj/prj3000/prj3100/selectPrj3100FormFileCntAjax.do'/>", "async": false}
							,{"docId": docId, "atchFileId":atchFileId });
					
					
					ajaxObj.setFnSuccess(function(data){
						if(data.errorYn == "Y"){
							$.osl.alert(data.message,{type: 'error'});
							
						}else{
							
							
							if(data.fileCnt == 0){
								$.osl.alert($.osl.lang("prj3100.message.alert.notHaveConfFile"));
								return false;
							
							
							}else if(data.fileCnt == 1){
								
								$.osl.file.fileDownload(atchFileId, data.fileSn);
								
							
							}else{
								
								var data = {
										docId : docId,
										atchFileId : atchFileId,
										docNm : $('#docNm').val()
								};
								var options = {
										modalTitle: "산출물 양식 다운로드",
										autoHeight: false
									};
								
								$.osl.layerPopupOpen('/prj/prj3000/prj3100/selectPrj3101View.do',data,options);
								
							}
						}
					});
					
					
					ajaxObj.send();
					
					
					
				},
				
				"selectAtchFileDown" :function(obj){
					
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					var confFileCnt = $('#confirmationList').children('div').length;
					
					
					if(!confFileCnt == 0){
						
						fileZipDownload('atchFile');
					
					
					}else{
						$.osl.alert($.osl.lang("prj3100.message.alert.notHaveConfFile"));
						return false;
					}
				},
				
				"selectWaitFileDown" :function(obj){
					
					
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					var confFileCnt = $('#waitConfirmationList').children('div').length;
					
					
					if(!confFileCnt == 0){
						
						fileZipDownload('waitFile');
					
					
					}else{
						$.osl.alert($.osl.lang("prj3100.message.alert.notHaveConfFile"));
						return false;
					}
				},
				
				"selectAtchFileDownAll" : function(obj){
					
					
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					
					var selectNode = treeObj.jstree().get_node(selectNodeIds[0]);
					var nodeData = selectNode.original;
					
					var docId = nodeData.docId;
					var atchFileId = nodeData.docAtchFileId
					
					if(!$.osl.isNull(docId) && !$.osl.isNull(atchFileId)){
						var url = '/prj/prj3000/prj3100/selectPrj3100MenuTreeZipDownload.do?atchFileId='+atchFileId+'&docId='+docId;
						var fileLink = document.createElement("a");
						fileLink.href = url;
						fileLink.target = "_self";
						document.fileDownFrame.downForm.append(fileLink);
						fileLink.click();
						fileLink.remove();
					}else{
						$.osl.alert($.osl.lang("prj3100.message.alert.lackDownloadInfo"));
					}
					
				},
				
				
			}
		});
		
		
		
		
		
		
		
		
		
		
		
		
		$('#waitFileBtn').change(function(){
			var fileType = 'waitFile';
			fnFileAjaxUpload($('#waitFileBtn')[0].files , fileType);
			$('#waitFileBtn').val('');
		});
		
		
		$('#atchFileBtn').change(function(){
			var fileType = 'atchFile';
			fnFileAjaxUpload($('#atchFileBtn')[0].files , fileType);
			$('#atchFileBtn').val('');
		});
		
		
		
		
		
        function fileDropDown() {
            var confirmation = $("#confirmationList");
            
            confirmation.on('dragenter', function(e) {
                e.stopPropagation();
                e.preventDefault();
                
                confirmation.addClass('osl-border-brand');
            });
            confirmation.on('dragleave', function(e) {
                e.stopPropagation();
                e.preventDefault();
                
                confirmation.removeClass('osl-border-brand');
            }); 
            confirmation.on('dragover', function(e) {
            	e.stopPropagation(); 
                e.preventDefault();
                
                 confirmation.addClass('osl-border-brand');
            });
            confirmation.on('drop', function(e) {
            	e.preventDefault();
                
                confirmation.removeClass('osl-border-brand');

                var files = e.originalEvent.dataTransfer.files;
                
                if (files != null) {
                    if (files.length < 1) {
                       
                        return;
                    } else {
                    	
        				var selectNodeIds = treeObj.jstree("get_selected");
        				if($.osl.isNull(selectNodeIds)){
        					$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
        					return false;
        				}

                        var fileType = 'atchFile';
                    	fnFileAjaxUpload(files, fileType);
                    }
                } else {
                    alert("ERROR");
                }
            });
            var waitConfirmation = $("#waitConfirmationList");
            
            waitConfirmation.on('dragenter', function(e) {
                e.stopPropagation();
                e.preventDefault();
                
                waitConfirmation.addClass('osl-border-brand');
            });
            waitConfirmation.on('dragleave', function(e) {
                e.stopPropagation();
                e.preventDefault();
                
                waitConfirmation.removeClass('osl-border-brand');
            });
            waitConfirmation.on('dragover', function(e) {
            	e.stopPropagation(); 
                e.preventDefault();
                
                waitConfirmation.addClass('osl-border-brand');
            });
            waitConfirmation.on('drop', function(e) {
            	
            	e.preventDefault();
                
                waitConfirmation.removeClass('osl-border-brand');

                var files = e.originalEvent.dataTransfer.files;
                
                if (files != null) {
                    if (files.length < 1) {
                        return;
                    } else {
						
                    	
        				var selectNodeIds = treeObj.jstree("get_selected");
        				if($.osl.isNull(selectNodeIds)){
        					$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
        					return false;
        				}

                        var fileType = 'waitFile';
                        
                    	fnFileAjaxUpload(files, fileType);
                    }
                } else {
                    alert("ERROR");
                }
            });
        }
		
		
        
		
		new Sortable($('#confirmationList')[0], {
			group:'shared',
	        animation: 100,
	        
	        chosenClass: "chosen",
	        
	        onMove:function(evt,originalEvent){
				var UserAgent = navigator.userAgent;

				if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null){
					return false;
				}else{
					return true;
				}
			},
	      	
			onAdd:function(evt){
				
				var moveDiv = $(evt.item);
				
				var fileSn = moveDiv.data("filesn");
				var fileType = 'waitFile';
				
				updateFileType(fileType,fileSn);
			}
	    });

		
		
		new Sortable($('#waitConfirmationList')[0], {
	        group:'shared',
	        animation: 100,
	        
	        chosenClass: "chosen",
	        
	        onMove:function(evt,originalEvent){
	        	
				var UserAgent = navigator.userAgent;

				if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null){
					return false;
				}else{
					return true;
				}
			},
	      	
			onAdd:function(evt){
				
				var moveDiv = $(evt.item);
				
				var infType = moveDiv.data("inftype");
				var signUseNm = $('#signUseNm').val();
				
				
				if(infType == '01' && signUseNm == '예'){
					
					
					
					
				        
				        	
				        	var fileSn = moveDiv.data('filesn');
							var fileType = 'atchFile';
							
							
							updateFileType(fileType,fileSn);
				        	
				        
				       
				        	
				        	
		    				$("button[data-tree-id=prj3100DocTree][data-tree-action=selectFiles]").click();
				        
					
					
				}
				
				else if(infType == '02'){
					
					$.osl.alert("결재 대기 파일은 변경할 수 없습니다.");
					
					
    				$("button[data-tree-id=prj3100DocTree][data-tree-action=selectFiles]").click();
					
					return false;
				}
				
				else{
					
					var fileSn = moveDiv.data('filesn');
					var fileType = 'atchFile';
					
					
					updateFileType(fileType,fileSn);
					
				}
				
			}
	    });
		
	
		
		 
		 
		
		
		
		
		
		
		
		
		
		
		$.osl.datatable.setting("prj3002PrjTable",{
			data: {
				source: {
					read: {
						url: "/prj/prj3000/prj3000/selectPrj3002DocConListAjax.do"
					}
				},
			},
			columns: [
				{field: 'checkbox', title: '#', textAlign: 'center', width: 20, selector: {class: 'kt-checkbox--solid'}, sortable: false, autoHide: false},
				{field: 'rn', title: 'No.', textAlign: 'center', width: 50, autoHide: false, sortable: false},
				{field: 'targetTypeNm', title: '구분', textAlign: 'left', width: 100, search: false},
				{field: 'targetNm', title: '대상 명', textAlign: 'left', width: 200, search: true, autoHide: false},
				{field: 'regUsrNm', title: '연결자', textAlign: 'center', width: 150, search: true,
					template: function (row) {
						return $.osl.user.usrImgSet(row.regUsrId, row.regUsrNm);
					},
					onclick: function(rowData){
						$.osl.user.usrInfoPopup(rowData.regUsrId);
					}
				},
				{field: 'regDtm', title: '연결일', textAlign: 'center', width: 100, search: true, searchType:"date"}
				
			],
			searchColumns:[
				{field: 'targetCd', title: '구분', searchOrd: 0, searchType:"select", searchCd:"PRJ00022"}
			],
			rows:{
				clickCheckbox: true
			},
			actionBtn:{
				"title": "연결 제거",
				"update": false
			},
			actionTooltip:{
				"delete": "연결 제거"
			},
			actionFn:{
				"insert":function(datatableId, type, rowNum){
					
					
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					
					var selectNode = treeObj.jstree().get_node(selectNodeIds[0]);
					var nodeData = selectNode.original;
					
					var data = {docId: docId,
								dtParamPrjId : nodeData.prjId};
					var options = {
							idKey: datatableId,
							modalTitle: $.osl.lang("prj3100.modal.title.insertDocCon"),
							closeConfirm: true,
							keyboard:true,
							backdrop:true,
							modalSize: "xl"
						};
					
					$.osl.layerPopupOpen('/prj/prj3000/prj3000/selectPrj3002View.do',data,options);
				},
				"delete":function(rowDatas, datatableId, type, rowNum, elem){
					return;
					
					var ajaxObj = new $.osl.ajaxRequestAction(
							{"url":"<c:url value='/prj/prj3000/prj3000/deletePrj3002DocConInfoAjax.do'/>"}
							,{deleteDataList: JSON.stringify(rowDatas)});
					
					ajaxObj.setFnSuccess(function(data){
						if(data.errorYn == "Y"){
			   				$.osl.alert(data.message,{type: 'error'});
			   			}else{
			   				
			   				$.osl.toastr(data.message);
			   				
			   				
			   				$("button[data-datatable-id="+datatableId+"][data-datatable-action=select]").click();
			   			}
					});
					
					
					ajaxObj.send();
				}
			}
		});
		
			
		
		
		
		
		
		
		
		
		ktScrollInit("#prj3100DocTree", "410");
		
		ktScrollInit("#confirmationList", "350");
		
		ktScrollInit("#waitConfirmationList", "350");	
		
		
		
		function ktScrollInit (targetName, targetHeight) {
			KTUtil.scrollInit($(targetName)[0], {
		   		
		         disableForMobile: true, 
		         
		         resetHeightOnDestroy: true, 
		         
		         handleWindowResize: true, 
		         
		         height: targetHeight
		    });
		}
		
		
		
		
	};
	
	
	
	var selectDocInfo = function(nodeData) {
    	
		 
		
		var ajaxObj = new $.osl.ajaxRequestAction(
				{"url":"<c:url value='/prj/prj3000/prj3000/selectPrj3000DocInfoAjax.do'/>", "async": false}
				,{"docId": nodeData.docId, "dtParamPrjId" : nodeData.prjId});
		
		
		ajaxObj.setFnSuccess(function(data){
			
			if(data.errorYn == "Y"){
				$.osl.alert(data.message,{type: 'error'});
			}else{
				$("#"+formId)[0].reset();
				
				
		    	$.osl.setDataFormElem(data.docInfoMap,"frPrj3100", ["docId", "docNm", "useNm", "ord", "docEdDtm", "signUseNm", "docFormFileId", "docFormConfFileId", "docAtchFileId", "docWaitFileId"]);
			
		    	var docDesc = data.docInfoMap.docDesc;
				
				
				if($.osl.isNull(data.docInfoMap.docEdDtm)){
					$("#docEdDtm").val("-");
				}
				
				if(!$.osl.isNull(docDesc)){
					docDesc =  $.osl.escapeHtml(docDesc);
			    	
					$("#docDesc").html(docDesc.replace(/\n/g, '<br/>'));
				}
				
				
				
				
				
				selectDocConInfo();
			}
		});
		
		
		ajaxObj.send();
	};
	
	
	
	var fnFileAjaxUpload = function(files,fileType) {
		var files = files;
		
		var fd = $.osl.formDataToJsonArray(formId);
		
		
		var extChk = true;
		
		
		$.each(files, function(idx, file){
			
			
			var ext = file.name.split(".").pop().toLowerCase();
			
			if(!fileWhiteList(ext)){
				
				
				$.osl.alert($.osl.lang("prj3100.message.alert.fileExtChk",ext));
				
				extChk = false;
				return false;
			}
			fd.append('file', file);
		});
		
		
		if(!extChk){
			return;
		}
		
		fd.append('fileType', fileType);
		
		
		if(fileType == 'atchFile'){
			atchFileId = $('#docAtchFileId').val();
			
		
		}else if(fileType == 'waitFile'){
			atchFileId = $('#docWaitFileId').val();
		}
		
		fd.append('atchFileId', atchFileId);
		fd.append('insertType', fileType);
		fd.append('paramDocId', $('#docId').val());
		
		
		var ajaxObj = new $.osl.ajaxRequestAction(
				{"url":"<c:url value='/prj/prj3000/prj3100/insertPrj3100FormFileUploadAjax.do'/>", "async": false, "contentType":false,"processData":false ,"cache":false}
				,fd);
		
		
		ajaxObj.setFnSuccess(function(data){
			
			if(data.errorYn == "Y"){
				$.osl.alert(data.message,{type: 'error'});
			}else{
				$.osl.toastr(data.message);
				
				
				selectFormFileList();
			}
		});
		
		
		ajaxObj.send();
	};
	
	
	
	var selectFormFileList = function(){
		
		
		var docAtchFileId = $('#docAtchFileId').val();
		
		 
		var docWaitFileId = $('#docWaitFileId').val();
		
		
		var ajaxObj1 = new $.osl.ajaxRequestAction(
				{"url":"<c:url value='/prj/prj3000/prj3100/selectPrj3100FileListAjax.do'/>", "async": false}
				,{'docAtchFileId': docAtchFileId, 'docWaitFileId':docWaitFileId, "docId" : $("#docId").val()});
					
		
		
		ajaxObj1.setFnSuccess(function(data){
			
			if(data.errorYn == "Y"){
				$.osl.alert(data.message,{type: 'error'});
			}else{
				
				
				drawList(data);
			}
		});
		
		
		ajaxObj1.send();			
		
	}
	
	 
	var drawList = function(data){
		
		$("#confirmationList").empty();
		$("#waitConfirmationList").empty();
		
		var atchFileList = data.atchFileList;
		
		var waitFileList = data.waitFileList;
		
		
		
		var infoIcon ='<div class="osl-uppy__btn osl-uppy__left kt-margin-r-10">'
							+'<i class="fas fa-info-circle"></i>'
						+'</div>';
		
		var rightIcon = '<div class="osl-uppy__btn osl-uppy__arrow-btn osl-uppy__right-btn osl-uppy__left kt-margin-r-10"></div>';
		
		var leftIcon = '<div class="osl-uppy__btn osl-uppy__arrow-btn osl-uppy__left-btn osl-uppy__left kt-margin-r-10"></div>';
		
		var deleteIcon = '<div class="osl-uppy__btn osl-uppy__left kt-margin-r-10">'
								+'<i class="fa fa-times-circle"></i>'
							+'</div>';
							
		
		
		$.each(atchFileList, function(idx, fileData){
			var fileVolume =$.osl.byteCalc(fileData.fileSize);
			var iconPath = '';
			var iconClass = '';
			var iconColor = '';
			var iconPlace = '';
			
			var atchFileId = $('#docAtchFileId').val();
			
			var checkIcon='<div class="kt-padding-t-15 kt-padding-b-15 float-left">'
							+	'<label class="kt-checkbox kt-checkbox--single kt-checkbox--solid kt-margin-b-0" data-ord="'+fileData.ord+'">'
								+	'<input type="checkbox" name="fileSn" value="'+fileData.fileSn +'"><span></span>'
							+	'</label>'
						+	'</div>';
						
			
			var imgExt = ['jpg','jpeg','png','gif'];
			
			
			
			if(fileData.fileExtsn == 'pdf'){
				iconPath =	'<path d="M9.766 8.295c-.691-1.843-.539-3.401.747-3.726 1.643-.414 2.505.938 2.39 3.299-.039.79-.194 1.662-.537 3.148.324.49.66.967 1.055 1.51.17.231.382.488.629.757 1.866-.128 3.653.114 4.918.655 1.487.635 2.192 1.685 1.614 2.84-.566 1.133-1.839 1.084-3.416.249-1.141-.604-2.457-1.634-3.51-2.707a13.467 13.467 0 0 0-2.238.426c-1.392 4.051-4.534 6.453-5.707 4.572-.986-1.58 1.38-4.206 4.914-5.375.097-.322.185-.656.264-1.001.08-.353.306-1.31.407-1.737-.678-1.059-1.2-2.031-1.53-2.91zm2.098 4.87c-.033.144-.068.287-.104.427l.033-.01-.012.038a14.065 14.065 0 0 1 1.02-.197l-.032-.033.052-.004a7.902 7.902 0 0 1-.208-.271c-.197-.27-.38-.526-.555-.775l-.006.028-.002-.003c-.076.323-.148.632-.186.8zm5.77 2.978c1.143.605 1.832.632 2.054.187.26-.519-.087-1.034-1.113-1.473-.911-.39-2.175-.608-3.55-.608.845.766 1.787 1.459 2.609 1.894zM6.559 18.789c.14.223.693.16 1.425-.413.827-.648 1.61-1.747 2.208-3.206-2.563 1.064-4.102 2.867-3.633 3.62zm5.345-10.97c.088-1.793-.351-2.48-1.146-2.28-.473.119-.564 1.05-.056 2.405.213.566.52 1.188.908 1.859.18-.858.268-1.453.294-1.984z"></path>';
				iconClass = 'osl-uppy-pdf-bg';
				iconColor = '#E2514A';
				iconPlace = '38';
			
			}else if(fileData.fileExtsn == 'zip'){
				iconPath = '<path d="M10.45 2.05h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5V2.55a.5.5 0 0 1 .5-.5zm2.05 1.024h1.05a.5.5 0 0 1 .5.5V3.6a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5v-.001zM10.45 0h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5V.5a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.024a.5.5 0 0 1 .5-.5zm-2.05 3.074h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.024a.5.5 0 0 1 .5-.5zm-2.05 1.024h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm-2.05 1.025h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.024a.5.5 0 0 1 .5-.5zm-1.656 3.074l-.82 5.946c.52.302 1.174.458 1.976.458.803 0 1.455-.156 1.975-.458l-.82-5.946h-2.311zm0-1.025h2.312c.512 0 .946.378 1.015.885l.82 5.946c.056.412-.142.817-.501 1.026-.686.398-1.515.597-2.49.597-.974 0-1.804-.199-2.49-.597a1.025 1.025 0 0 1-.5-1.026l.819-5.946c.07-.507.503-.885 1.015-.885zm.545 6.6a.5.5 0 0 1-.397-.561l.143-.999a.5.5 0 0 1 .495-.429h.74a.5.5 0 0 1 .495.43l.143.998a.5.5 0 0 1-.397.561c-.404.08-.819.08-1.222 0z"></path>';
				iconClass = 'osl-uppy-archive-bg';
				iconColor = '#00C469';
				iconPlace = '38';
			
			}else{
				iconPath = '<path d="M5.5 22a.5.5 0 0 1-.5-.5v-18a.5.5 0 0 1 .5-.5h10.719a.5.5 0 0 1 .367.16l3.281 3.556a.5.5 0 0 1 .133.339V21.5a.5.5 0 0 1-.5.5h-14zm.5-1h13V7.25L16 4H6v17z"></path><path d="M15 4v3a1 1 0 0 0 1 1h3V7h-3V4h-1z"></path>';
				iconClass = 'osl-uppy-file-bg';
				iconColor = '#A7AFB7';
				iconPlace = '25';
			}
			
			var fileDivbefore = 	'';
			
			
			if(fileData.infType == '02'){
				fileDivbefore += 	'<div class="osl-uppy-file--btngroup osl-uppy-file border atch-file" data-filesn="'+fileData.fileSn+'" data-ord="'+fileData.ord+'" data-inftype="'+fileData.infType+'">';
				
				
				if(fileData.usrId == $.osl.user.userInfo.usrId){
					fileDivbefore +=  	'<div class="border-bottom osl-min-h-px--50 kt-padding-l-20 kt-padding-r-20">'
										+		'<div class="float-left">'
										+			checkIcon
										+		'</div>'
										+		'<div class="float-left osl-line-height--50">'
										+			'<span class="badge badge-warning">결재 대기</span>'
										+		'</div>';
					
				
				}else{
					fileDivbefore +=	'<div class="border-bottom osl-min-h-px--50 kt-padding-l-20 kt-padding-r-20">'
									+		'<div class="float-left"></div>'
									+		'<div class="float-left osl-line-height--50">'
									+			'<span class="badge badge-warning">결재 대기</span>'
									+		'</div>';
					
					
				}
								
				fileDivbefore += 			'<div class="float-right">'
									+			infoIcon
									+		'</div>'
									+	'</div>'
									+	'<div class="w-100 osl-min-h-px--70 kt-padding-l-20 kt-padding-r-20 kt-padding-t-10 kt-padding-b-10">';
				
			}
			
			else{
				fileDivbefore += 	'<div class="osl-uppy-file osl-uppy-file--btngroup border atch-file" data-filesn="'+fileData.fileSn+'" data-ord="'+fileData.ord+'" data-inftype="'+fileData.infType+'">'
									+ 	'<div class="border-bottom osl-min-h-px--50 kt-padding-l-20 kt-padding-r-20">'
									+		'<div class="float-left"></div>';
									
									
									
									if(fileData.infType == '01'){
										fileDivbefore += '<div class="float-left osl-line-height--50"><span class="badge badge-info">확정</span></div>';
									
									}else if(fileData.infType == '04'){
										fileDivbefore += '<div class="float-left osl-line-height--50"><span class="badge badge-danger">결재 반려</span></div>';
									}
									
									
					fileDivbefore +=	'<div class="float-right">'
					
									
									+			rightIcon
									+			deleteIcon
									+		'</div>'
									+	'</div>'
									+	'<div class="w-100 osl-min-h-px--70 kt-padding-l-20 kt-padding-r-20 kt-padding-t-10 kt-padding-b-10">';
									
			}
			
			var fileDivCenter = '';
			
			
			if($.inArray(fileData.fileExtsn, imgExt) == -1){
				fileDivCenter +=		'<div class="osl-uppy-file-sumnail '+ iconClass +'">'
										+	'<div class="osl-uppy-file-sumnail-bg"></div>'
										+	'<span class="osl-uppy-iconFile">'
											+	'<svg aria-hidden="true" focusable="false" class="UppyIcon" width="'+iconPlace+'" height="'+iconPlace+'" viewBox="0 0 25 25">'
												+	'<g fill="'+iconColor +'" fill-rule="nonzero">'
													+	iconPath
												+	'</g>'
											+	'</svg>'
										+	'</span>'
										+	'<div class="osl-uppy-list-dashboardItem-action--download" aria-label="파일 다운로드">'
											+	'<i class="fas fa-arrow-circle-down"></i>'
										+	'</div>'
			
			}else{
				fileDivCenter +=		'<div class="osl-uppy-file-sumnail">'
										+ 	'<img src="/cmm/fms/getImage.do?fileSn='+fileData.fileSn+"&atchFileId="+atchFileId+'">'
										+	'<div class="osl-uppy-list-dashboardItem-action--download" aria-label="파일 다운로드">'
										+		'<i class="fas fa-arrow-circle-down"></i>'
										+	'</div>'
			}
			
			var fileDivAfter = 			'';
			
			
			if(fileData.infType == '01'){
				fileDivAfter = 			'</div>'
									+	'<div class="osl-uppy-file-info-group kt-padding-t-0">'
										+	'<div class="osl-uppy-file-name" title="'+$.osl.escapeHtml(fileData.orignlFileNm)+ '">'+$.osl.escapeHtml(truncateString(fileData.orignlFileNm,'30')) +'</div>'
										+	'<div class="osl-uppy-file-volume">'+fileVolume+'</div>'
										+ 	'<div class="osl-uppy-file-name" infType="'+fileData.infType+'">확정 일자:'+fileData.signDtm+'</div>'
									+	'</div>'
								+	'</div>'; 
			}
			
			
			else if(fileData.infType == '02'){
				fileDivAfter = 			'</div>'
									+	'<div class="osl-uppy-file-info-group kt-padding-t-0">'
										+	'<div class="osl-uppy-file-name" title="'+$.osl.escapeHtml(fileData.orignlFileNm)+ '">'+$.osl.escapeHtml(truncateString(fileData.orignlFileNm,'30')) +'</div>'
										+	'<div class="osl-uppy-file-volume">'+fileVolume+'</div>'
										+ 	'<div class="osl-uppy-file-name" infType="'+fileData.infType+'"></div>'
									+	'</div>'
								+	'</div>'; 
				
			}
			
			
			else{
				fileDivAfter = 			'</div>'
									+	'<div class="osl-uppy-file-info-group kt-padding-t-0">'
										+	'<div class="osl-uppy-file-name" title="'+$.osl.escapeHtml(fileData.orignlFileNm)+ '">'+$.osl.escapeHtml(truncateString(fileData.orignlFileNm,'30')) +'</div>'
										+	'<div class="osl-uppy-file-volume">'+fileVolume+'</div>'
										+ 	'<div class="osl-uppy-file-name" infType="'+fileData.infType+'"></div>'
									+	'</div>'
									
									
								+	'</div>'; 
			}
			
			fileDivAfter += '</div>';
								
			var fileDiv = fileDivbefore + fileDivCenter + fileDivAfter;
						
			$('#confirmationList').append(fileDiv);
			
		});
		
		
		$.each(waitFileList, function(idx, fileData){
			var fileVolume =$.osl.byteCalc(fileData.fileMg);
			var iconPath = '';
			var iconTitle = '';
			var iconClass = '';
			var iconColor = '';
			var iconPlace = '';
			
			
			var imgExt = ['jpg','jpeg','png','gif'];
			
			
			if(fileData.fileExtsn == 'pdf'){
				iconPath =	'<path d="M9.766 8.295c-.691-1.843-.539-3.401.747-3.726 1.643-.414 2.505.938 2.39 3.299-.039.79-.194 1.662-.537 3.148.324.49.66.967 1.055 1.51.17.231.382.488.629.757 1.866-.128 3.653.114 4.918.655 1.487.635 2.192 1.685 1.614 2.84-.566 1.133-1.839 1.084-3.416.249-1.141-.604-2.457-1.634-3.51-2.707a13.467 13.467 0 0 0-2.238.426c-1.392 4.051-4.534 6.453-5.707 4.572-.986-1.58 1.38-4.206 4.914-5.375.097-.322.185-.656.264-1.001.08-.353.306-1.31.407-1.737-.678-1.059-1.2-2.031-1.53-2.91zm2.098 4.87c-.033.144-.068.287-.104.427l.033-.01-.012.038a14.065 14.065 0 0 1 1.02-.197l-.032-.033.052-.004a7.902 7.902 0 0 1-.208-.271c-.197-.27-.38-.526-.555-.775l-.006.028-.002-.003c-.076.323-.148.632-.186.8zm5.77 2.978c1.143.605 1.832.632 2.054.187.26-.519-.087-1.034-1.113-1.473-.911-.39-2.175-.608-3.55-.608.845.766 1.787 1.459 2.609 1.894zM6.559 18.789c.14.223.693.16 1.425-.413.827-.648 1.61-1.747 2.208-3.206-2.563 1.064-4.102 2.867-3.633 3.62zm5.345-10.97c.088-1.793-.351-2.48-1.146-2.28-.473.119-.564 1.05-.056 2.405.213.566.52 1.188.908 1.859.18-.858.268-1.453.294-1.984z"></path>';
				iconClass = 'osl-uppy-pdf-bg';
				iconColor = '#E2514A';
				iconPlace = '38';
			}else if(fileData.fileExtsn == 'zip'){
				iconPath = '<path d="M10.45 2.05h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5V2.55a.5.5 0 0 1 .5-.5zm2.05 1.024h1.05a.5.5 0 0 1 .5.5V3.6a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5v-.001zM10.45 0h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5V.5a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.024a.5.5 0 0 1 .5-.5zm-2.05 3.074h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.024a.5.5 0 0 1 .5-.5zm-2.05 1.024h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm-2.05 1.025h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.024a.5.5 0 0 1 .5-.5zm-1.656 3.074l-.82 5.946c.52.302 1.174.458 1.976.458.803 0 1.455-.156 1.975-.458l-.82-5.946h-2.311zm0-1.025h2.312c.512 0 .946.378 1.015.885l.82 5.946c.056.412-.142.817-.501 1.026-.686.398-1.515.597-2.49.597-.974 0-1.804-.199-2.49-.597a1.025 1.025 0 0 1-.5-1.026l.819-5.946c.07-.507.503-.885 1.015-.885zm.545 6.6a.5.5 0 0 1-.397-.561l.143-.999a.5.5 0 0 1 .495-.429h.74a.5.5 0 0 1 .495.43l.143.998a.5.5 0 0 1-.397.561c-.404.08-.819.08-1.222 0z"></path>';
				iconClass = 'osl-uppy-archive-bg';
				iconColor = '#00C469';
				iconPlace = '38';
			}else{
				iconPath = '<path d="M5.5 22a.5.5 0 0 1-.5-.5v-18a.5.5 0 0 1 .5-.5h10.719a.5.5 0 0 1 .367.16l3.281 3.556a.5.5 0 0 1 .133.339V21.5a.5.5 0 0 1-.5.5h-14zm.5-1h13V7.25L16 4H6v17z"></path><path d="M15 4v3a1 1 0 0 0 1 1h3V7h-3V4h-1z"></path>';
				iconClass = 'osl-uppy-file-bg';
				iconColor = '#A7AFB7';
				iconPlace = '25';
			}
			
			
			var checkIcon='<div class="kt-padding-t-15 kt-padding-b-15 float-left">'
							+	'<label class="kt-checkbox kt-checkbox--single kt-checkbox--solid kt-margin-b-0" data-ord="'+fileData.ord+'">'
								+	'<input type="checkbox" name="fileSn" value="'+fileData.fileSn +'"><span></span>'
							+	'</label>'
						+	'</div>';
			
			
			var fileDivbefore = 	'<div class="osl-uppy-file osl-uppy-file--btngroup wait-file border"  data-filesn="'+fileData.fileSn+'" data-ord="'+fileData.ord+'" >'
									+ 	'<div class="border-bottom osl-min-h-px--50 kt-padding-l-20 kt-padding-r-20">'
									+		'<div class="float-left"></div>'
									+		'<div class="float-right">'
									+			leftIcon
									+			deleteIcon
									+		'</div>'
									+	'</div>'
									+	'<div class="w-100 osl-min-h-px--70 kt-padding-l-20 kt-padding-r-20 kt-padding-t-10 kt-padding-b-10">'
									
			var fileDivCenter = '';
			
			
			if($.inArray(fileData.fileExtsn, imgExt) == -1){
				fileDivCenter +=		'<div class="osl-uppy-file-sumnail '+ iconClass +'">'
										+	'<div class="osl-uppy-file-sumnail-bg"></div>'
										+	'<span class="osl-uppy-iconFile">'
											+	'<svg aria-hidden="true" focusable="false" class="UppyIcon" width="'+iconPlace+'" height="'+iconPlace+'" viewBox="0 0 25 25">'
												+	'<g fill="'+iconColor +'" fill-rule="nonzero">'
													+	iconPath
												+	'</g>'
											+	'</svg>'
										+	'</span>'
										+	'<div class="osl-uppy-list-dashboardItem-action--download" aria-label="파일 다운로드">'
											+	'<i class="fas fa-arrow-circle-down"></i>'
										+	'</div>'
			
			}else{
				fileDivCenter +=		'<div class="osl-uppy-file-sumnail">'
										+ 	'<img src="'+ "/cmm/fms/getImage.do?fileSn="+fileData.fileSn+"&atchFileId="+fileData.atchFileId+'">'
										+	'<div class="osl-uppy-list-dashboardItem-action--download" aria-label="파일 다운로드">'
										+		'<i class="fas fa-arrow-circle-down"></i>'
										+	'</div>'
			}
			var fileDivAfter = 			'</div>'
									+	'<div class="osl-uppy-file-info-group kt-padding-t-0">'
										+	'<div class="osl-uppy-file-name" title="' + $.osl.escapeHtml(fileData.orignlFileNm) + '">'+ $.osl.escapeHtml(truncateString(fileData.orignlFileNm,'30')) +'</div>'
										+	'<div class="osl-uppy-file-volume">'+fileVolume+'</div>'
										+ 	'<div class="osl-uppy-file-name"> 업로드 일자 :'+fileData.creatDt+'</div>'
									+	'</div>'
									
									+	'<input type="hidden" name="fileSn" value="'+fileData.fileSn +'">'
								+	'</div>'
							+	'</div>'; 
									
			var fileDiv = fileDivbefore + fileDivCenter + fileDivAfter;
			$('#waitConfirmationList').append(fileDiv);
			
		});
	
		
		fileMoveBtnEvt();
		deleteFileBtnEvt();
		fileDownBtnEvt();
	}
    
	 
	var fileDownBtnEvt = function(){
		
		$('.osl-uppy-list-dashboardItem-action--download').click(function(){
			var type = $(this).parents(".osl-uppy-file");
			var fileSn = type.data("filesn");
			var atchFileId = '';
			
			var form = $("#"+formId)[0];
			var fd = $.osl.formDataToJsonArray(formId);
			
			if(type.hasClass('atch-file')){
				
				atchFileId = $('#docAtchFileId').val();
			
			}else if(type.hasClass('wait-file')){
				
				atchFileId = $('#docWaitFileId').val();
			}
			
			$.osl.file.fileDownload(atchFileId,fileSn);
			
		});
	}
	 
	 
	var fileMoveBtnEvt = function(){
		$('.osl-uppy__arrow-btn').click(function(){
			
			var target = $(this).parents(".osl-uppy-file");
			var fileSn = target.data("filesn");
			
			var fileType = '';
			
			
			if(target.hasClass('wait-file')){
				
				$('#confirmationList').prepend(target);
				
				$(this).addClass('osl-uppy__right-btn osl-uppy__right');
				$(this).removeClass('osl-uppy__left-btn osl-uppy__left');
				
				
				fileType = 'waitFile';
			
			}else{ 
				
				$('#waitConfirmationList').prepend(target);
				
				$(this).addClass('osl-uppy__left-btn osl-uppy__left');
				$(this).removeClass('osl-uppy__right-btn osl-uppy__right');

				
				fileType = 'atchFile';
			}
			
			
			updateFileType(fileType,fileSn);
		});
	}
	
	
	var deleteFileBtnEvt = function(){
		
		$('.fa-times-circle').click(function(){
			
			var targetType = $(this).parents(".osl-uppy-file");
			var fileSn = targetType.data("filesn");
			var fileType = '';
			
			
			if(targetType.hasClass("wait-file")){
				atchFileId = $('#docWaitFileId').val();
				fileType = "waitFile";
				
			
			}else if(targetType.hasClass("atch-file")){ 
				atchFileId = $('#docAtchFileId').val();
				fileType = "waitType";
				
			}
			
			var selectNodeIds = treeObj.jstree("get_selected");
			
			
			var selectNode = treeObj.jstree().get_node(selectNodeIds[0]);
			var nodeData = selectNode.original;

			
			var docId = nodeData.docId;
			var signUseCd = nodeData.signUseCd;
			
			
			$.osl.confirm($.osl.lang("prj3100.message.confirm.deleteFormFile"),null,function(result) {
		        if (result.value) {
		        	
		    		
		    		var ajaxObj = new $.osl.ajaxRequestAction(
						{"url":"<c:url value='/prj/prj3000/prj3100/deletePrj3100FileAjax.do'/>"}
						,{"atchFileId":atchFileId, "fileSn":fileSn, "docId":docId,"signUseCd":signUseCd,"fileType":fileType});
	
		    		
		    		ajaxObj.setFnSuccess(function(data){
		    			if(data.errorYn == "Y"){
		    				$.osl.alert(data.message,{type: 'error'});
		    			}else{
		    				
		    				$.osl.toastr(data.message);
		    				
		    				
		    				$("button[data-tree-id=prj3100DocTree][data-tree-action=selectFiles]").click();
		    			}
		    		});
		    		
		    		
		    		ajaxObj.send();
		        }
		    });
				
		});
		
	}
	
	
	 var truncateString = function (name, length) {
            if (name.length <= length) return name;
            if (length <= "...".length) return name.substr(0, length);
            var showlength = length - "...".length,
                startText = Math.ceil(showlength / 2),
                endText = Math.floor(showlength / 2);
            return name.substr(0, startText) + "..." + name.substr(name.length - endText);
        }
	
	
	
	
	
	
	var updateFileType = function(fileType, fileSn){
		
		
		var beforeFileId = '';
		
		
		var afterFileId = '';
		
		
		if(fileType == 'waitFile'){
			
			
			beforeFileId = $('#docWaitFileId').val();
			afterFileId = $('#docAtchFileId').val();
			
		
		}else if(fileType == 'atchFile'){
			
			
			beforeFileId = $('#docAtchFileId').val();
			afterFileId = $('#docWaitFileId').val();
			
		}
		
		
		var ajaxObj = new $.osl.ajaxRequestAction(
				{"url":"<c:url value='/prj/prj3000/prj3100/updatePrj3100FileTypeAjax.do'/>", "async": false}
				,{"docId": docId, "beforeFileId":beforeFileId, "afterFileId":afterFileId, "fileSn":fileSn, "updateType":fileType});
		
		
		ajaxObj.setFnSuccess(function(data){
			
			if(data.errorYn == "Y"){
				$.osl.alert(data.message,{type: 'error'});
				
				
				$("button[data-tree-id=prj3100DocTree][data-tree-action=selectFiles]").click();
			}else{
				
				$.osl.toastr(data.message);
				
				
				selectFormFileList();
			}
		});
		
		
		ajaxObj.send();
	}
	
	 
	var fileZipDownload = function(fileType){
		var docId = $('#docId').val();
		var atchFileId = '';
		
		if(fileType == 'atchFile'){
			atchFileId = $('#docAtchFileId').val();	
		}else if(fileType == 'waitFile'){
			atchFileId = $('#docWaitFileId').val();
		}else if(fileType == 'formConfFile'){
			atchFileId = $('#docFormConfFileId').val();				
		}
		var docNm = $('#docNm').val();
		
		if(!$.osl.isNull(docId) && !$.osl.isNull(atchFileId) && !$.osl.isNull(docNm)){
			var url = '/prj/prj3000/prj3100/selectPrj3100ZipDownload.do?atchFileId='+atchFileId+'&docId='+docId+'&fileType='+fileType;
			var fileLink = document.createElement("a");
			fileLink.href = url;
			fileLink.target = "_self";
			document.fileDownFrame.downForm.append(fileLink);
			fileLink.click();
			fileLink.remove();
		}else{
			$.osl.alert($.osl.lang("prj3100.message.alert.lackDownloadInfo"));
		}
		
	}
	
	
	 
	var fileWhiteList = function( fileExt ){
		
		if( $.inArray(fileExt, ['doc','docx','hwp','pdf','ppt','pptx','xls','xlsx','zip','jpg','jpeg','png','gif','eml','cell','show','txt']) == -1) {
			return false;
	   }
		return true;
		
	}
	 
	 
	var selectFormFileCnt = function(){
		
		var docId = $('#docId').val();
		
		var atchFileId = $('#docFormConfFileId').val();
		 
		var fileData = '';
		var ajaxObj = new $.osl.ajaxRequestAction(
				{"url":"<c:url value='/prj/prj3000/prj3100/selectPrj3100FormFileCntAjax.do'/>", "async": false}
				,{"docId": docId, "atchFileId":atchFileId });
		
		
		ajaxObj.setFnSuccess(function(data){
			
			if(data.errorYn == "Y"){
				$.osl.alert(data.message,{type: 'error'});
				
			}else{
				
				return data;
			}
		});
		
		
		ajaxObj.send();
	}
	
	
	var selectDocConInfo = function(){
		docId = $("#docId").val();
		$.osl.datatable.list[prj3002PrjTable].targetDt.setDataSourceParam("docId", docId);
		$("button[data-datatable-id="+prj3002PrjTable+"][data-datatable-action=select]").click();
		 
	}	
	
	return {
        
        init: function() {
        	documentSetting();
        }
        
    };
}();

$.osl.ready(function(){
	OSLPrj3000Popup.init();
});
</script>

<jsp:include page="/WEB-INF/jsp/lunaops/bottom/footer.jsp" />

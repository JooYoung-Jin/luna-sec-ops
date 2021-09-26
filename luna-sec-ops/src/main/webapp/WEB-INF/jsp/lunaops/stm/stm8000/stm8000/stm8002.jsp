<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<input type="hidden" name="strgRepId" id="strgRepId" value="<c:out value='${param.strgRepId}'/>">
<input type="hidden" name="systemRoot" id="systemRoot" value="<c:out value='${param.systemRoot}'/>">
<div class="row">
	<div class="col-lg-5 col-md-12 col-sm-12 col-12">
		<div class="kt-portlet kt-portlet--mobile kt-margin-b-10">
			<div class="kt-portlet__head">
				<div class="kt-portlet__head-label kt-portlet__head--lg">
					<h5 class="kt-font-boldest kt-font-brand">
						<i class="fa fa-th-large kt-margin-r-5"></i><span data-lang-cd="stm8002.title.revision">리비전 목록</span>
					</h5>
				</div>
			</div>
		</div>
		<div class="kt-portlet kt-portlet--mobile kt-margin-b-0">
			<div class="kt-portlet__head">
				
				<div class="kt-portlet__head-label">
					<div class="osl-datatable-search kt-margin-b-0" data-datatable-id="stm8002RepTable"></div>
				</div>
			</div>
			<div class="kt-portlet__head">
				<div class="kt-portlet__head-label kt-portlet__head--lg">
					<h6 class="kt-font-boldest kt-font-brand kt-margin-r-20">
						<span data-lang-cd="stm8002.label.revisionNum">리비전 번호</span>
					</h6>
					<input type="text" class="osl-outline--secondary rounded kt-padding-10 kt-margin-r-10 osl-w-px-80 osl-h-px-35" placeholder="시작" authocomplate="off" regexstr="^[0-9]{0,4}$" maxlength="4" id="searchStNum" name="searchStNum">
					<span class="osl-h-px-38 font-weight-bolder osl-line-height--38">-</span>
					<input type="text" class="osl-outline--secondary rounded kt-padding-10 kt-margin-l-10 osl-w-px-80 osl-h-px-35" placeholder="종료"  authocomplate="off" regexstr="^[0-9]{0,4}$" maxlength="4" id="searchEdNum" name="searchEdNum">
				</div>
				<div class="kt-portlet__head-toolbar">
					<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm btn-elevate btn-elevate-air kt-margin-l-10" data-datatable-id="stm8002RepTable" data-datatable-action="select" title="리비전 조회" data-title-lang-cd="stm8002.actionBtn.selectTooltip" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="1">
						<i class="fa fa-list"></i><span data-lang-cd="datatable.button.select">조회</span>
					</button>
				</div>
			</div>
			<div class="kt-portlet__body kt-padding-15 osl-min-h-px--520">
				
				<div class="kt_datatable osl-datatable-footer__divide kt-margin-b-0" id="stm8002RepTable"></div>
			</div>
		</div>
	</div>
	<div class="col-lg-7 col-md-12 col-sm-12 col-12 kt-margin-t-20-tablet">
		<div class="kt-portlet kt-margin-b-10">
			<div class="kt-portlet__head">
				<div class="kt-portlet__head-label">
					<h5 class="kt-font-boldest kt-font-brand">
						<i class="fa fa-th-large kt-margin-r-5"></i><span id="revisionNum"></span><span data-lang-cd="stm8002.title.file">파일 목록</span>
					</h5>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-6">
				<div class="kt-portlet kt-margin-b-0">
					<div class="kt-portlet__head">
						<div class="kt-portlet__head-label">
							<div class="osl-tree-search" data-tree-id="stm8002RevisionFileTreeDiv"></div>
						</div>
					</div>
					<div class="kt-portlet__head">
						<div class="kt-portlet__head-label"></div>
						<div class="kt-portlet__head-toolbar">
							<a href="#" class="btn btn-sm btn-icon btn-clean btn-icon-md osl-tree-action" data-toggle="kt-tooltip" title="전체 펼치기" data-title-lang-cd="tree.label.contextmenu.allNodeOpen" data-tree-id="stm8002RevisionFileTreeDiv" data-tree-action="allNodeOpen">
								<i class="fa fa-plus"></i>
							</a>
							<a href="#" class="btn btn-sm btn-icon btn-clean btn-icon-md osl-tree-action" data-toggle="kt-tooltip" title="전체 접기" data-title-lang-cd="tree.label.contextmenu.allNodeClose" data-tree-id="stm8002RevisionFileTreeDiv" data-tree-action="allNodeClose">
								<i class="fa fa-minus"></i>
							</a>
							<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air osl-tree-action" data-tree-id="stm8002RevisionFileTreeDiv" data-tree-action="select" title="리비전 파일 목록 조회" data-original-title="stm8002.actionBtn.selectFileTooltip"  data-title-lang-cd="stm8002.actionBtn.selectFileTooltip" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="1">
								<i class="fa fa-list"></i><span data-lang-cd="datatable.button.select">조회</span>
							</button>
						</div>
					</div>
					<div class="kt-portlet__body position-relative kt-padding-0 osl-min-h-px--520">
						
						<div class="osl-div-cover osl-width--100-p osl-height--100-p">
							<span data-lang-cd="stm8002.message.selectRevision">리비전을 선택하세요.</span>
						</div>
						<div class="osl-tree kt-scroll kt-margin-20" data-height="480" id="stm8002RevisionFileTreeDiv"></div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 col-6">
				<div class="kt-portlet kt-margin-b-0">
					<div class="kt-portlet__head kt-padding-l-20 kt-padding-r-20">
						<div class="kt-portlet__head-label">
							<div class="osl-datatable-search kt-margin-b-0" data-datatable-id="stm8002RevisionFileTable"></div>
						</div>
					</div>
					<div class="kt-portlet__head kt-padding-l-20 kt-padding-r-20">
						<div class="kt-portlet__head-label">
						</div>
						<div class="kt-portlet__head-toolbar">
							<div class="kt-portlet__head-group">
								<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 btn-elevate btn-elevate-air" data-datatable-id="stm8002RevisionFileTable" data-datatable-action="select" title="파일 조회" data-title-lang-cd="stm8002.actionBtn.selectFileTooltip" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="1">
									<i class="fa fa-list"></i><span data-lang-cd="datatable.button.select">조회</span>
								</button>
								<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 btn-elevate btn-elevate-air" data-datatable-id="stm8002RevisionFileTable" data-datatable-action="diff" title="DIFF" data-title-lang-cd="stm8002.actionBtn.diffTooltip" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="diff" tabindex="2">
									<i class="fas fa-code"></i><span data-lang-cd="stm8002.actionBtn.diffBtn">DIFF</span>
								</button>
							</div>
						</div>
					</div>
					<div class="kt-portlet__body osl-min-h-px--520">
						
						<div class="kt_datatable osl-datatable-footer__divide" id="stm8002RevisionFileTable"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
"use strict";
var OSLStm8002Popup = function() {
	var strgRepId = $("#strgRepId").val();
	
	var strgTypeCd;
	
	var linkUrl;
	
	var linkId;
	
	var linkPw;
	
	var linkRepo;
	
	var revision;
	
	var searchStNum;
	var searchEdNum;
	
	var treeObj;
	
	var datatableId = "stm8002RepTable";
	var treetableId = "stm8002RevisionFileTreeDiv";
	var treeDatatableId = "stm8002RevisionFileTable";
	
	
	var okRevision = false;
	var okFileCode = false;
	
	var systemRoot = $("#systemRoot").val();
	
	
	var documentSetting = function() {
		
		
		$("#searchStNum").attr("placeholder",$.osl.lang("stm8002.placeholder.revision.start"));
		$("#searchEdNum").attr("placeholder",$.osl.lang("stm8002.placeholder.revision.end"));
		
		
		if(!$.osl.isNull(systemRoot) && systemRoot){
			
			okRevision = true;
			okFileCode = true;
		}else{
			authCheck(strgRepId);
			
			if(!okRevision){
				$.osl.alert($.osl.lang("stm8002.message.auth"));
				
				$.osl.layerPopupClose();
			}
		}
		
		
		getStrgRepInfo();

		
		$.osl.datatable.setting(treeDatatableId,{
				data: {
					source: {
						read: {
							url: "/stm/stm8000/stm8000/selectStm8000FileListAjax.do",
							params : {
								selectFileDirType : "file",
								revision : revision,
								strgRepId : strgRepId
							}
						}
					},
					pageSize: 7
				},
				toolbar:{
					items:{
						pagination:{
							pageSizeSelect : [7, 10, 20, 30, 50, 100],
							pages:{
								desktop: {
									layout: 'default',
									pagesNumber: 3
								},
								tablet:{
									layout: 'default',
									pagesNumber: 1
								},
								mobile:{
									layout: 'default',
									pagesNumber: 1
								}
							}
						}
					}
				},
				columns: [
					{field: 'checkbox', title: '#', textAlign: 'center', width: 15, selector: {class: 'kt-checkbox--solid'}, sortable: false, autoHide: false},
					{field: 'type', title: '유형', textAlign: 'center', width: 80, autoHide: false, sortable: false},
					{field: 'name', title: '파일명', textAlign: 'left', width: 150, autoHide: false, search: true},
				],
				rows:{
					clickCheckbox: true
				},
				actionBtn:{
					"title": $.osl.lang("stm8002.revisionFile.actionTitle"),
					"insert" : false,
					"update" : false,
					"delete" : false,
					"dblClick" : true,
					"diff" : true,
				},
				actionTooltip:{
					"dblClick" : $.osl.lang("stm8002.revisionFile.actionTooltip.dblClickTooltip"),
					"diff" : $.osl.lang("stm8002.revisionFile.actionTooltip.diffTooltip")
				},
				actionFn:{
					"dblClick": function(rowData){
						var data = {
							type : strgTypeCd,
							path: rowData.path,
							revision : revision,
							strgRepId : strgRepId
						};
						var options = {
							idKey:"fileCode_"+revision,
							modalTitle: "[Revision "+revision+"] "+ rowData.name,
							autoHeight: false,
							ftScrollUse: false
						};
						
						if(okFileCode){
							$.osl.layerPopupOpen('/cmm/cmm6000/cmm6800/selectCmm6801View.do',data,options);
						}else{
							$.osl.alert($.osl.lang("cmm6801.message.auth"));
							return false;
						}
					},
					"diff":function(rowDatas, datatableId, type, rowNum){
						var rowData;
						
						
						if(type == "list"){
							if(rowNum != 1){
								$.osl.alert($.osl.lang("stm8002.revisionFile.message.diff", rowNum), {"type":"warning"});
								return false;
							}else{
								rowData = rowDatas[0];
							}
						}else{
							
							rowData = rowDatas;
						}
						
						var data = {
							type : strgTypeCd,
							path: rowData.path,
							revision : revision,
							strgRepId : strgRepId,
							searchStNum : $("#searchStNum").val(),
							searchEdNum : $("#searchEdNum").val(),
							name : rowData.name,
						};
						var options = {
							idKey:"stm8002_diff",
							modalTitle: "[Revision. "+revision+"] "+rowData.name,
							
							autoHeight: false,
						};

						if(okFileCode){
							$.osl.layerPopupOpen('/stm/stm8000/stm8000/selectStm8004View.do',data,options);
						}else{
							$.osl.alert($.osl.lang("stm8002.message.auth"));
							return false;
						}
					}
				},
				theme:{
					 actionBtn:{
						 "click": "",
						 "diff" : "",
					 },
					 actionBtnIcon:{
	    				"click": "fa flaticon2-check-mark",
	    				"diff": "fa flaticon2-check-mark",
	    			}
				}
			}
		);
		
		var params;
		if(strgTypeCd == "01"){
			params = {
					type : strgTypeCd,
					linkUrl : linkUrl,
					linkId : linkId,
					linkPw : linkPw,
			};
		}else{
			params = {
					type : strgTypeCd,
					linkUrl : linkUrl,
					linkId : linkId,
					linkPw : linkPw,
					linkRepo : linkRepo,
			};
		}

		
		$.osl.datatable.setting(datatableId,{
				data: {
					source: {
						read: {
							url: "/stm/stm8000/stm8000/selectStm8000RevisionListAjax.do",
							params : params
						}
					},
					pageSize: 7,
				},
				toolbar:{
					items:{
						pagination:{
							pageSizeSelect : [7, 10, 20, 30, 50, 100],
							pages:{
								desktop: {
									layout: 'default',
									pagesNumber: 3
								},
								tablet:{
									layout: 'default',
									pagesNumber: 1
								},
								mobile:{
									layout: 'default',
									pagesNumber: 1
								}
							}
						}
					}
				},
				columns: [
					{field: 'revision', title: '리비전', textAlign: 'center', width: 40, autoHide: false, sortable: false},
					{field: 'comment', title: '내용', textAlign: 'left', width: 200, sortable: false, search:true,
						template : function(row){
							if($.osl.isNull((row.comment).trim())){
								return "-";
							}else{
								return row.comment;
							}
						},
					},
					{field: 'author', title: '등록자', textAlign: 'center', width: 80, sortable: false, search:true},
					{field: 'logDate', title: '등록일', textAlign: 'center', width: 80, sortable: false, search:true, searchType:"daterange",
						template : function(row){
							var paramDatetime = new Date(row.logDate);
			                var agoTimeStr = $.osl.datetimeAgo(paramDatetime, {fullTime: "d", returnFormat: "yyyy-MM-dd"});
			                return agoTimeStr.agoString;
						},
					},
				],
				rows:{
					clickCheckbox: true
				},
				actionBtn:{
					"title": $.osl.lang("stm8002.title.actionTitle.repository"),
					"width": 30,
					"insert" : false,
					"update" : false,
					"delete" : false,
					"click" : true,
				},
				actionTooltip:{
					"click" : $.osl.lang("stm8002.repository.actionTooltip.clickTooltip"),
				},
				actionFn:{
					"select": function(datatableId, elem, datatable){
						
						var searchTypeTarget = $(".osl-datatable-search__dropdown[data-datatable-id="+datatableId+"] > .dropdown-item.active");
						
						
						var searchData = $("#searchData_"+datatableId);

						
						var searchFieldId = searchTypeTarget.data("field-id");
						var searchType = searchTypeTarget.data("opt-type");
						var searchCd = $(this).data("opt-mst-cd");
						
						
						datatable.setDataSourceQuery({});
						
						
						searchStNum = $("#searchStNum").val();
						searchEdNum = $("#searchEdNum").val();
						
						datatable.setDataSourceParam("searchStNum", searchStNum);
						datatable.setDataSourceParam("searchEdNum", searchEdNum);						

						
						if(searchType != "all"){
							var searchDataValue = searchData.val();
							
							
							if(searchType == "select"){
								searchDataValue = $("#searchSelect_"+datatableId).val();
							}
							datatable.search(searchDataValue,searchFieldId);
							
						}else{
							datatable.search();

							
							revision = "";
							$("#revisionNum").text("");
							
							
							treeLoad();
							
							fileLoad();
						}
						
						
 						datatable.reload();
					},
					"click": function(rowData){
						revision = rowData.revision;
						$("#revisionNum").text("["+revision+"] ");
						
	    				treeLoad();
						
						fileLoad();
					}
				},
				theme:{
					 actionBtn:{
						 "click": ""
					 },
					 actionBtnIcon:{
	    				"click": "fa flaticon2-check-mark",
	    			}
				},
				callback:{
					initComplete: function(evt, config){
						
						dirTreeSetting();
					},
					ajaxDone: function(evt, list){
						$("#searchStNum").val($.osl.datatable.list[datatableId].targetDt.lastResponse.meta.searchStNum);
						$("#searchEdNum").val($.osl.datatable.list[datatableId].targetDt.lastResponse.meta.searchEdNum);
						
						searchStNum = $("#searchStNum").val();
						searchEdNum = $("#searchEdNum").val();
					}
				}
			}
		);
		
		
		KTUtil.scrollInit($("#"+treetableId)[0], {
	        disableForMobile: true, 
	        resetHeightOnDestroy: true, 
	        handleWindowResize: true, 
	        height: 480
	    });
	}
	
	 
	var dirTreeSetting = function(){
		treeObj = $.osl.tree.setting(treetableId,{
			data:{
				url:"<c:url value='/stm/stm8000/stm8000/selectStm8000DirListAjax.do'/>",
				key: "currentKey",
				
				pKey: "parentKey",
				
				labelKey: "name",
				param:{
					selectFileDirType : "dir",
					revision : revision,
					strgRepId : strgRepId
				}
			},
			search:{
				
				case_insensitive : true,
				
				show_only_matches: true,
				
				show_only_matches_children: true,
			},
			callback:{
				init: function(treeObj, data){
					treeContent();
				},
				onclick: function(treeObj, selNode){
					
					fileLoad(selNode.original.key);
				}
			}
		});
	};
	
	
	var treeContent = function(){
		
		if($.osl.isNull(revision)){
			$('.osl-div-cover').css('display','');
			$('.osl-div-cover').text($.osl.lang("stm8002.dirTree.message.selectRevision"));
			$("#"+treetableId).children("ul").addClass("kt-hide");
		}else{
			$('.osl-div-cover').css('display','none');
			$("#"+treetableId).children("ul").removeClass("kt-hide");
		}
	};
	
	
	var getStrgRepInfo = function(){
		var data = {
				strgRepId : strgRepId
		};
		
		
   		var ajaxObj = new $.osl.ajaxRequestAction(
   				{"url":"<c:url value='/stm/stm8000/stm8000/selectStm8000ServerInfoAjax.do'/>", "async":false}
   				, data);
		
   		
   		ajaxObj.setFnSuccess(function(data){
   			if(data.errorYn == "Y"){
   				$.osl.alert(data.message,{type: 'error'});
   			}else{
   				strgTypeCd = data.repInfo.strgTypeCd;
   		  		linkUrl = data.repInfo.strgRepUrl;
   		  		linkId = data.repInfo.strgUsrId;
   		  		
   		  		if(strgTypeCd == "01"){
   		  			
   		  			linkPw = data.repInfo.strgUsrPw;
   		  		}else{
   		  			
	   		  		linkPw = data.repInfo.strgKey;
	   		  		linkRepo = data.repInfo.strgRepNm;
   		  		}
   			}
   		});
  	 	
   		ajaxObj.send();
	};
	 
	
	var treeLoad = function(){
		
		treeContent();
		
		
		treeObj.jstree().settings.data.param = {
			selectFileDirType : "dir",
			revision : revision,
			strgRepId : strgRepId,
			searchStNum : searchStNum,
			searchEdNum : searchEdNum,
		};
		
		
		treeObj.jstree().refresh();
		$("button[data-tree-id="+treetableId+"][data-tree-action=select]").click();
		
	};
	
	
	var fileLoad = function(pathKey){
		var datatable = $.osl.datatable.list[treeDatatableId].targetDt;
		
		datatable.setDataSourceParam("selectFileDirType", "file");
		datatable.setDataSourceParam("revision", revision);
		datatable.setDataSourceParam("strgRepId", strgRepId);
		datatable.setDataSourceParam("filePath", pathKey);
		
		
		$("button[data-datatable-id="+treeDatatableId+"][data-datatable-action=select]").click(); 
	};
	
	
	var authCheck = function(strgRepId){
		var data = {
				strgRepId : strgRepId,
		};
		
		
    	var ajaxObj = new $.osl.ajaxRequestAction(
	   			{"url":"<c:url value='/stm/stm8000/stm8000/selectStm8000AuthCheckAjax.do'/>", "async": false}
				, data);
		
    	
    	ajaxObj.setFnSuccess(function(data){
    		if(data.errorYn == "Y"){
				$.osl.alert(data.message,{type: 'error'});
				
				$.osl.layerPopupClose();
			}else{
				var result = data.result;
				
				
				if(result.resultRevision == "Y"){
					okRevision = true;
				}else{
					okRevision = false;
				}
				
				if(result.resultFileCode == "Y"){
					okFileCode = true;
				}else{
					okFileCode = false;
				}
			}
    	});
    	
		ajaxObj.send();
	};
	
	return {
		init: function(){
			documentSetting();
		}
	};
 }();
 
 
 $.osl.ready(function(){
	 OSLStm8002Popup.init();
 });
</script>

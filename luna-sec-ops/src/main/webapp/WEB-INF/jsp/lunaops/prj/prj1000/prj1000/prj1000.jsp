<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/lunaops/top/header.jsp" />
<jsp:include page="/WEB-INF/jsp/lunaops/top/top.jsp" />
<jsp:include page="/WEB-INF/jsp/lunaops/top/aside.jsp" />
<c:if test="${not empty prjInfo}">
	<form class="kt-form" id="frPrj1000">
		<input type="hidden" name="paramPrjGrpId" id="paramPrjGrpId" value="${prjInfo.prjId}"/>
	</form>
	<div class="kt-portlet kt-portlet--mobile">
		<div class="kt-portlet__head kt-portlet__head--lg">
			<div class="kt-portlet__head-label">
				<h4 class="kt-font-boldest kt-font-brand">
					<i class="fa fa-th-large kt-margin-r-5"></i>프로젝트 그룹 정보
				</h4>
			</div>
		</div>
		<div class="kt-portlet__head kt-portlet__head--lg osl-portlet__head__block ">
			<div class="kt-padding-l-40 kt-padding-b-15 col-lg-4 col-md-4 col-sm-12">
				<h5 class="kt-font-boldest text-truncate" title="<c:out value="${prjInfo.prjNm}"/>" data-toggle="kt-tooltip" data-skin="brand" data-placement="top"><c:out value="${prjInfo.prjNm}"/></h5>
				<span class="text-muted text-truncate" title="<c:out value="${prjInfo.prjDesc}"/>" data-toggle="kt-tooltip" data-skin="brand" data-placement="top"><c:out value="${prjInfo.prjDesc}"/></span>
			</div>
			<div class="col-lg-8 col-md-8 col-sm-12">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-12">
						<div class="kt-pull-left kt-margin-r-25">
							<div class="kt-padding-b-5"><i class="far fa-calendar-alt kt-font-brand kt-margin-r-5"></i><span>시작일</span></div>
							<h5><span class="badge badge-primary"><c:out value="${prjInfo.startDt}"/></span></h5>
						</div>
						<div class="kt-pull-left ">
							<div class="kt-padding-b-5"><i class="far fa-calendar-alt kt-font-brand kt-margin-r-5"></i><span>종료일</span></div>
							<h5><span class="badge badge-danger"><c:out value="${prjInfo.endDt}"/></span></h5>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-12">
						<div class="osl-progress">
							<div class="kt-padding-b-5"><i class="fa fa-chart-line kt-font-brand kt-margin-r-5"></i><span>진척률</span></div>
							<div class="progress osl-prj-group-md">
								<div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 78%" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100">78%</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:if>
<div class="kt-portlet kt-portlet--mobile">
	<div class="kt-portlet__head kt-portlet__head--lg">
		<div class="kt-portlet__head-label">
			<h4 class="kt-font-boldest kt-font-brand">
				<i class="fa fa-th-large kt-margin-r-5"></i><c:out value="${sessionScope.selMenuNm}"/>
			</h4>
		</div>
		<div class="kt-portlet__head-toolbar">
			<div class="kt-portlet__head-wrapper">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm btn-elevate btn-elevate-air btn-view-type active" title="데이터 카드 형식으로 보기" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="6" data-view-type="01">
						<i class="fa fa-table osl-padding-r0"></i>
					</button>
					<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm btn-elevate btn-elevate-air btn-view-type" title="데이터 테이블 형식으로 보기" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="7" data-view-type="02">
						<i class="fa fa-list osl-padding-r0"></i>
					</button>
				</div>
			</div>
		</div>
	</div>
	<div class="kt-portlet__head kt-portlet__head--lg osl-portlet__head__block ">
		<div class="col-lg-3 col-md-6 col-sm-12 kt-padding-r-0">
			<div class="osl-datatable-search" data-datatable-id="prj1000PrjTable"></div>
		</div>
		<div class="col-lg-9 col-md-12 col-sm-12 text-right kt-padding-r-0">
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="prj1000PrjTable" data-datatable-action="select" title="프로젝트 목록 조회" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="1">
				<i class="fa fa-list"></i><span>조회</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="prj1000PrjTable" data-datatable-action="insert" title="프로젝트 등록" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="insert" tabindex="2">
				<i class="fa fa-plus"></i><span>등록</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="prj1000PrjTable" data-datatable-action="update" title="프로젝트 수정" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="update" tabindex="3">
				<i class="fa fa-edit"></i><span>수정</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="prj1000PrjTable" data-datatable-action="delete" title="프로젝트 그룹 휴지통 이동(삭제)" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="delete" tabindex="4">
				<i class="fa fa-trash-alt"></i><span>휴지통 이동(삭제)</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 btn-elevate btn-elevate-air" name="prjTrashListMoveBtn" id="prjTrashListMoveBtn" data-datatable-id="prj1000PrjTable" title="프로젝트 휴지통 목록 이동" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="delete" tabindex="5">
				<i class="fa fa-trash"></i><i class="fa fa-list"></i><span>휴지통 목록</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="prj1000PrjTable" data-datatable-action="prjRedo" title="프로젝트 복구" data-title-lang-cd="prj1000.button.title.redo" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="update" tabindex="3" hidden>
				<i class="fa fa-redo-alt"></i><span data-lang-cd="datatable.button.redo">복구</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="prj1000PrjTable" data-datatable-action="prjDelete" title="프로젝트 완전 삭제" data-title-lang-cd="prj1000.button.title.recordDelete" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="delete" tabindex="4" hidden>
				<i class="fa fa-times-circle"></i><span data-lang-cd="datatable.button.recordDelete">완전 삭제</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 btn-elevate btn-elevate-air" name="prjListMoveBtn" id="prjListMoveBtn" data-datatable-id="prj1000PrjTable" title="프로젝트 목록으로 이동" data-title-lang-cd="prj1000.button.title.prev" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="5" hidden>
				<i class="fa fa-trash"></i><i class="fa fa-list"></i><span data-lang-cd="datatable.button.prev">돌아가기</span>
			</button>
		</div>
	</div>
</div>
<div id="prj1000CardTable"></div>
<div class="kt_datatable osl-datatable-footer__divide" id="prj1000PrjTable"></div>
<script>
"use strict";
var OSLPrj1000Popup = function () {
	
	var paramPrjGrpId = $("#paramPrjGrpId").val();
	
	
	var currentViewType = "01";
	
	var documentSetting = function(){
		var config = {
			cardUiTarget: $("#prj1000CardTable"),
			data: {
				source: {
					read: {
						url: "/prj/prj1000/prj1000/selectPrj1000ListAjaxView.do",
						params:{
							paramPrjGrpId: paramPrjGrpId,
							delCd: "02"
						}
					}
				},
			},
			columns: [
				{field: 'checkbox', title: '#', textAlign: 'center', width: 20, selector: {class: 'kt-checkbox--solid'}, sortable: false, autoHide: false},
				{field: 'rn', title: 'No.', textAlign: 'center', width: 25, autoHide: false},
				{field: 'prjNm', title: '프로젝트 명', textAlign: 'left', width: 200, search: true},
				{field: 'startDt', title: '시작 일자', textAlign: 'center', width: 100, search: true, searchType:"date"},
				{field: 'endDt', title: '종료 일자', textAlign: 'center', width: 100, search: true, searchType:"date"},
				{field: 'reqAllCnt', title: '전체 요구사항 수', textAlign: 'center', width: 100
					,template: function (row) {return String(row.reqAllCnt)}},
				{field: 'reqInProgressCnt', title: '진행중 요구사항', textAlign: 'center', width: 100
					,template: function (row) {return String(row.reqInProgressCnt)}},
				{field: 'reqDoneCnt', title: '완료 요구사항', textAlign: 'center', width: 100
					,template: function (row) {return String(row.reqDoneCnt)}},
			],
			actionBtn:{
				"update": false,
				"delete": false,
				"title": "기능 버튼",
				"width": 100,
				"dblClick": true
			},
			actionTooltip:{
				"dblClick": "상세 정보",
			},
			actionFn:{
				"insert":function(datatableId, type, rowNum){
					
					var ajaxObj = new $.osl.ajaxRequestAction(
							{"url":"<c:url value='/prj/prj1000/prj1400/selectPrj1400PrjGrpInfoAjax.do'/>"}
							,{prjId: paramPrjGrpId});
					
					ajaxObj.setFnSuccess(function(data){
						if(data.errorYn == "Y"){
			   				$.osl.alert(data.message,{type: 'error'});
			   			}else{
			   				var prjGrpInfo = data.prjInfo;
			   				
			   				var data = {
									type:"insert",
									paramPrjGrpId: paramPrjGrpId,
									prjGrpNm: prjGrpInfo.prjNm,
									prjGrpStartDt: prjGrpInfo.startDt,
									prjGrpEndDt: prjGrpInfo.endDt
							};
							var options = {
									autoHeight: false,
									modalSize: "xl",
									idKey: datatableId,
									modalTitle: $.osl.lang("prj1001.insert.title"),
									closeConfirm: false,
								};
							
							$.osl.layerPopupOpen('/prj/prj1000/prj1000/selectPrj1001View.do',data,options);
			   			}
					});
					
					
					ajaxObj.send();
				},
				"update": function(rowData, datatableId, type, rowNum, elem){
					
					var ajaxObj = new $.osl.ajaxRequestAction(
							{"url":"<c:url value='/prj/prj1000/prj1400/selectPrj1400PrjGrpInfoAjax.do'/>"}
							,{prjId: paramPrjGrpId});
					
					ajaxObj.setFnSuccess(function(data){
						if(data.errorYn == "Y"){
			   				$.osl.alert(data.message,{type: 'error'});
			   			}else{
			   				var prjGrpInfo = data.prjInfo;
			   				
			   				var data = {
									type:"update",
									paramPrjGrpId: rowData.prjGrpId,
									paramPrjId: rowData.prjId,
									prjGrpNm: prjGrpInfo.prjNm,
									prjGrpStartDt: prjGrpInfo.startDt,
									prjGrpEndDt: prjGrpInfo.endDt
							};
							var options = {
									autoHeight: false,
									modalSize: "xl",
									idKey: datatableId,
									modalTitle: $.osl.lang("prj1001.update.title"),
									closeConfirm: false,
								};
							
							$.osl.layerPopupOpen('/prj/prj1000/prj1000/selectPrj1001View.do',data,options);
			   			}
					});
					
					
					ajaxObj.send();
				},
				
				"delete":function(rowDatas, datatableId, c, rowNum, elem){
					
					var ajaxObj = new $.osl.ajaxRequestAction(
							{"url":"<c:url value='/prj/prj1000/prj1000/updatePrj1000PrjGrpTrashListAjax.do'/>"}
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
				},
				
				"prjDelete": function(rowData, datatableId, type){
					var rowDatas = rowData;
					
					
					if(rowDatas.length == 0){
						$.osl.alert($.osl.lang("datatable.translate.records.nonSelect"));
						return true;
					}
					
					$.osl.confirm($.osl.lang("prj1000.confirm.prjDelete",rowDatas.length),{html:true}, function(result){
						if (result.value) {
							
							fnPrjDelete(rowDatas, datatableId);
						}
					});
				},
				
				"prjRedo": function(rowData, datatableId, type){
					var rowDatas = rowData;
					
					
					if(rowDatas.length == 0){
						$.osl.alert($.osl.lang("datatable.translate.records.nonSelect"));
						return true;
					}
					
					$.osl.confirm($.osl.lang("prj1000.confirm.prjRedo",rowDatas.length),{html:true}, function(result){
						if (result.value) {
							
							fnPrjRedoUpdate(rowDatas, datatableId);
						}
					});
				},
				
				"dblClick":function(rowData, datatableId, type, rowNum, elem){
					var data = {
							paramPrjGrpId: rowData.prjGrpId,
							paramPrjId: rowData.prjId
						};
						
					var options = {
							autoHeight: false,
							modalSize: "xl",
							idKey: datatableId+"_detail",
							modalTitle: $.osl.lang("prj1002.title"),
							closeConfirm: false,
						};
					$.osl.layerPopupOpen('/prj/prj1000/prj1000/selectPrj1002View.do',data,options);
				},
			},
			callback:{
				initComplete: function(evt,config){
					fnViewerChange();
				},
				ajaxDone: function(evt, list){
					
					var chartDataMap = [];
					
					
					var reqChartDataList = [];
					if($.osl.datatable.list["prj1000PrjTable"].targetDt.lastResponse.hasOwnProperty("reqChartDataList")){
						reqChartDataList = $.osl.datatable.list["prj1000PrjTable"].targetDt.lastResponse.reqChartDataList;
					}
					if(reqChartDataList.length > 0){
						$.each(reqChartDataList, function(idx, map){
							
							if(!chartDataMap.hasOwnProperty(map.prjId)){
								chartDataMap[map.prjId] = [];
							}
							
							chartDataMap[map.prjId].push(map);
						});
					}
					
					var prjGrpStr = '';
					var rowCnt = 0;
					$.each(list, function(idx, map){
						var prjAuthList = '';
						var prjAuthTargetList = [];
						try{
							
							if(!$.osl.isNull(map.prjUsrChargerList)){
								var usrList = (map.prjUsrChargerList).split(",");
								
								$.each(usrList, function(usrListIdx, usrInfoStr){
									
									
									var usrInfo = usrInfoStr.split("|");
									
									
									prjAuthTargetList.push({
											authType: usrInfo[0],
											authTargetId: usrInfo[1],
											authImg: $.osl.user.usrImgUrlVal(usrInfo[2]),
											authTargetNm: $.osl.escapeHtml(usrInfo[3])
									});
								});
							}
							
							
							$.each(prjAuthTargetList, function(authIdx, authMap){
								
								if(authIdx > 10){
									
									var endAuthCnt = (prjAuthTargetList.length-authIdx);
									prjAuthList += '<a href="#" class="kt-media kt-media--xs kt-media--circle" data-toggle="kt-tooltip" data-skin="brand" data-placement="top" title="" data-original-title="그 외 담당자 +'+endAuthCnt+'"><span>'+endAuthCnt+'+</span></a>';
									return false;
								}else{
									prjAuthList += '<a href="#" class="kt-media kt-media--xs kt-media--circle" data-toggle="kt-tooltip" data-skin="brand" data-placement="top" title="'+authMap.authTargetNm+'" data-original-title="'+authMap.authTargetNm+'" onclick="$.osl.user.usrInfoPopup(\''+authMap.authTargetId+'\');"><img src="'+authMap.authImg+'"></a>';
								}
							});
							
						}catch(subE){
							
						}
						
						
						var prjBgColor = map.prjBgColor;
						var prjColor = map.prjColor;
						if($.osl.isNull(prjBgColor)){
							prjBgColor = "#eef1fd";
						}
						if($.osl.isNull(prjColor)){
							prjColor = "#5578eb";
						}
						
						if(rowCnt == 0){
							prjGrpStr += '<div class="row">';
						}
						
						
						var rnStr = "No. "+map.rn;
						var rnClass = "badge-primary";
						
						
						var prjGrpDelCdMenuList = {
								
								"01":[
									'<div class="dropdown-item" data-datatable-id="prj1000PrjTable" data-datatable-expans="dropdown" data-datatable-action="prjRedo"><i class="fa fa fa-redo-alt kt-font-primary"></i>'+$.osl.lang("prj1000.menu.projectRedo")+'</div>',
									'<div class="dropdown-divider"></div>',
									'<div class="dropdown-item" href="#" data-datatable-id="prj1000PrjTable" data-datatable-expans="dropdown" data-datatable-action="prjDelete"><i class="fa fa-times-circle kt-font-primary"></i>'+$.osl.lang("prj1000.menu.recordDelete")+'</div>',
									'<div class="dropdown-divider"></div>',
									'<div class="dropdown-item" href="#" data-datatable-id="prj1000PrjTable" data-datatable-expans="dropdown" data-datatable-action="dblClick"><i class="fa fa-info-circle kt-font-primary"></i>'+$.osl.lang("prj1000.menu.projectDetail")+'</div>'
								],
								
								"02":[
									'<div class="dropdown-item" data-datatable-id="prj1000PrjTable" data-datatable-expans="dropdown" data-datatable-action="update"><i class="fa fa-edit kt-font-primary"></i>'+$.osl.lang("prj1000.menu.modify")+'</div>',
									'<div class="dropdown-item" data-datatable-id="prj1000PrjTable" data-datatable-expans="dropdown" data-datatable-action="delete"><i class="fa fa-trash kt-font-primary"></i>'+$.osl.lang("prj1000.menu.trashMove")+'</div>',
									'<div class="dropdown-divider"></div>',
									'<div class="dropdown-item" data-datatable-id="prj1000PrjTable" data-datatable-expans="dropdown" data-datatable-action="dblClick"><i class="fa fa-info-circle kt-font-primary"></i>'+$.osl.lang("prj1000.menu.projectDetail")+'</div>',
								]
						};
						
						
						if(map.delCd == "01"){
							rnStr = '<i class="fa fa-trash-alt"></i>';
							rnClass = "badge-danger"
						}
						
						
						prjGrpStr += 
							'<div class="col-lg-4 col-md-6 col-sm-12">'
								+'<div class="kt-portlet kt-portlet--mobile osl-prj-info-obj">'
									+'<div class="kt-portlet__head kt-portlet__head--lg">'
										+'<div class="kt-portlet__head-label">'
											+'<label class="kt-checkbox kt-checkbox--single kt-checkbox--solid"><input type="checkbox" value="'+idx+'" name="prjCheckbox" id="prjCheckbox_'+map.prjId+'" data-datatable-id="prj1000PrjTable">&nbsp;<span></span></label>'
											+'<h5 class="kt-font-boldest">'
												+'<span class="badge '+rnClass+' kt-margin-r-10">'+rnStr+'</span>'
												+'<span class="badge badge-primary kt-margin-r-10">'+$.osl.escapeHtml(map.prjTypeNm)+'</span>'
											+'</h5>'
										+'</div>'
										+'<div class="kt-portlet__head-toolbar">'
											+'<div class="kt-portlet__head-wrapper">'
												+'<button type="button" class="btn btn-outline-primary btn-bold btn-font-sm btn-elevate btn-elevate-air"  data-toggle="dropdown" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="1">'
													+'<i class="fa fa-bars osl-padding-r0"></i>'
												+'</button>'
												+'<div class="dropdown-menu dropdown-menu-right" data-datatable-rownum="'+idx+'">'
													+prjGrpDelCdMenuList[map.delCd].join('')
												+'</div>'
											+'</div>'
										+'</div>'
									+'</div>'
									+'<div class="kt-portlet__body">'
										+'<div class="d-flex kt-padding-l-15 align-items-center">'
											+'<div class="kt-media kt-media--xl kt-media--circle kt-media--info flex-shrink-0 osl-margin-r-2rm">'
												+'<span style="background-color:'+prjBgColor+';color:'+prjColor+';">'+map.prjAcrm+'</span>'
											+'</div>'
											+'<div class="d-flex flex-column osl-margin-r-auto">'
												+'<h5 class="kt-font-boldest" title="'+$.osl.escapeHtml(map.prjNm)+'" data-toggle="kt-tooltip" data-skin="brand" data-placement="top">'+$.osl.escapeHtml(map.prjNm)+'</h5>'
												+'<span class="text-muted osl-max-h-px--55 text-truncate" title="'+$.osl.escapeHtml(map.prjDesc)+'" data-toggle="kt-tooltip" data-skin="brand" data-placement="top">'+$.osl.escapeHtml(map.prjDesc)+'</span>'
											+'</div>'
										+'</div>'
										+'<div class="d-flex flex-wrap osl-margin-t-2rm kt-padding-l-20">'
											+'<div class="osl-margin-r-3rm osl-margin-b-175rm d-flex flex-column">'
												+'<span class="osl-margin-b-1rm"><i class="far fa-calendar-alt kt-font-brand kt-margin-r-5"></i>'+$.osl.lang("prj1000.startDate")+'</span>'
												+'<h5><span class="badge badge-primary">'+$.osl.escapeHtml(map.startDt)+'</span></h5>'
											+'</div>'
											+'<div class="osl-margin-r-3rm osl-margin-b-175rm d-flex flex-column">'
												+'<span class="osl-margin-b-1rm"><i class="far fa-calendar-alt kt-font-brand kt-margin-r-5"></i>'+$.osl.lang("prj1000.endDate")+'</span>'
												+'<h5><span class="badge badge-danger">'+$.osl.escapeHtml(map.endDt)+'</span></h5>'
											+'</div>'
											+'<div class="osl-flex-row-fluid osl-margin-b-175rm">'
												+'<div class="osl-progress">'
													+'<div class="osl-margin-b-1rm"><i class="fa fa-chart-line kt-font-brand kt-margin-r-5"></i><span>'+$.osl.lang("prj1000.completedRatio")+'</span></div>'
													+'<div class="progress osl-prj-group-md">'
														+'<div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 78%" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100">78%</div>'
													+'</div>'
												+'</div>'
											+'</div>'
										+'</div>'
										+'<div class="d-flex flex-wrap">'
											+'<div class="osl-widget osl-flex-row-fluid flex-wrap">'
												+'<div class="osl-widget-info__item osl-flex-row-fluid">'
													+'<div class="osl-widget-info__item-icon"><img src="/media/osl/icon/reqAll.png"></div>'
													+'<div class="osl-widget-info__item-info">'
														+'<a href="#" class="osl-widget-info__item-title">'+$.osl.lang("prj1000.requestAll")+'</a>'
														+'<div class="osl-widget-info__item-desc">'+$.osl.escapeHtml(map.reqAllCnt)+'</div>'
													+'</div>'
												+'</div>'
												+'<div class="osl-widget-info__item osl-flex-row-fluid">'
													+'<div class="osl-widget-info__item-icon"><img src="/media/osl/icon/reqInProgress.png"></div>'
													+'<div class="osl-widget-info__item-info">'
														+'<a href="#" class="osl-widget-info__item-title">'+$.osl.lang("prj1000.requestInProgress")+'</a>'
														+'<div class="osl-widget-info__item-desc">'+$.osl.escapeHtml(map.reqInProgressCnt)+'</div>'
													+'</div>'
												+'</div>'
												+'<div class="osl-widget-info__item osl-flex-row-fluid">'
													+'<div class="osl-widget-info__item-icon"><img src="/media/osl/icon/reqDone.png"></div>'
													+'<div class="osl-widget-info__item-info">'
														+'<a href="#" class="osl-widget-info__item-title">'+$.osl.lang("prj1000.requestDone")+'</a>'
														+'<div class="osl-widget-info__item-desc">'+$.osl.escapeHtml(map.reqDoneCnt)+'</div>'
													+'</div>'
												+'</div>'
											+'</div>'
										+'</div>'
									+'</div>'
										+'<div class="kt-portlet__foot kt-portlet__foot--sm osl-padding-none">'
											+'<div class="osl-chart--project" id="chart_'+map.prjId+'"></div>'
										+'</div>'
								+'</div>'
							+'</div>';
							rowCnt++;
							if(rowCnt == 3){
								prjGrpStr += '</div>';
								rowCnt = 0;
							}
					});
					
					
					$("#prj1000CardTable").html(prjGrpStr);
					
					$.each(Object.keys(chartDataMap), function(idx, loopPrjId){
						
						var chart = $.osl.chart.setting("apex","chart_"+loopPrjId, {
							data:{
								
								param:{
									
									dataArr: chartDataMap[loopPrjId],
									
									yKey: "reqProType",
									
									key:{
										key1:"reqProTypeNm",
										key2:"reqId",
										key3:"reqNm",
										key4:"reqOrd",
									},
									
									chartType:"heatmap"
								},
								
								type: "local"
							},
							chart: {
								
								toolbar:{show:false},
								
								height: 195,
								
								title:{
									text: "처리유형별 요구사항",
									align: "center",
								},
								
								tooltip: {
									custom: function(data) {
										var series = data.series;
										var seriesIndex = data.seriesIndex;
										var dataPointIndex = data.dataPointIndex;
										
										var selData = data.w.config.series[seriesIndex].data[dataPointIndex];
										var reqOrd = selData.reqOrd;
										var reqNm = selData.reqNm
										
										return '<div class="osl-chart--project__tooltip">['+reqOrd+'] '+reqNm+'</div>';
									}
								},
								option:{
									
									heatmap:{
							            colorScale:{
											ranges:[
												
												{from: 1,to: 1,color: "#9fd1f2", name:"접수 요청"},
												
												{from: 2,to: 2,color: "#5867dd", name:"진행 중"},
												
												{from: 3,to: 3,color: "#FFB200", name:"접수 반려"},
												
												{from: 4,to: 6,color: "#fd397a", name:"완료"},
											]
										}
									}
								},
							},
							
							actionFn:{
								
								"click": function(event, chartContext, config) {
									console.log(event);
									console.log(chartContext);
									console.log(config);
								}
							}
						});
					});
				}
			}
		};
		
		
		$.osl.datatable.setting("prj1000PrjTable", config);
		
		
		$(".btn-view-type").click(function(){
			var viewType = $(this).data("view-type");
			
			
			$(".btn-view-type.active").removeClass("active");
			$(this).addClass("active");
			
			currentViewType = viewType;
			
			
			fnViewerChange();
		});
		
		
		$("#prjTrashListMoveBtn").click(function(){
			$.osl.datatable.list["prj1000PrjTable"].targetDt.options.data.source.read.params.delCd = "01";
			$(this).attr("hidden","hidden");
			$("#prjListMoveBtn").removeAttr("hidden");

			
			$("button[data-datatable-id=prj1000PrjTable][data-datatable-action=insert],"
					+"button[data-datatable-id=prj1000PrjTable][data-datatable-action=update],"
					+"button[data-datatable-id=prj1000PrjTable][data-datatable-action=delete]").attr("hidden","hidden");
			 
			
			$("button[data-datatable-id=prj1000PrjTable][data-datatable-action=prjRedo],"
					+"button[data-datatable-id=prj1000PrjTable][data-datatable-action=prjDelete]").removeAttr("hidden","hidden");
			
			
			$.osl.datatable.list["prj1000PrjTable"].targetDt.reload();
		});

		
		$("#prjListMoveBtn").click(function(){
			$.osl.datatable.list["prj1000PrjTable"].targetDt.options.data.source.read.params.delCd = "02";
			$(this).attr("hidden","hidden");
			$("#prjTrashListMoveBtn").removeAttr("hidden");
			
			
			$("button[data-datatable-id=prj1000PrjTable][data-datatable-action=insert],"
					+"button[data-datatable-id=prj1000PrjTable][data-datatable-action=update],"
					+"button[data-datatable-id=prj1000PrjTable][data-datatable-action=delete]").removeAttr("hidden");
			
			
			$("button[data-datatable-id=prj1000PrjTable][data-datatable-action=prjRedo],"
					+"button[data-datatable-id=prj1000PrjTable][data-datatable-action=prjDelete]").attr("hidden","hidden");
			
			
			$.osl.datatable.list["prj1000PrjTable"].targetDt.reload();
		});
		
	};
	
	
	var fnPrjRedoUpdate = function(redoDataList, datatableId){
		
		var ajaxObj = new $.osl.ajaxRequestAction(
				{"url":"<c:url value='/prj/prj1000/prj1000/updatePrj1000PrjGrpTrashRedoListAjax.do'/>"}
				,{deleteDataList: JSON.stringify(redoDataList)});
		
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
	
	
	var fnPrjDelete = function(deleteDataList, datatableId){
		
		var ajaxObj = new $.osl.ajaxRequestAction(
				{"url":"<c:url value='/prj/prj1000/prj1000/deletePrj1000PrjDeleteListAjax.do'/>"}
				,{deleteDataList: JSON.stringify(deleteDataList)});
		
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
	
	var fnViewerChange = function(){
		
		if(currentViewType == "01"){	
			$("#prj1000PrjTable .kt-datatable__table").css({visibility: "hidden", height: 0});
		    
			$("#prj1000CardTable").show();
		}else{	
			$("#prj1000PrjTable .kt-datatable__table").css({visibility: "visible",height: "auto"});
			$("#prj1000CardTable").hide();
		}
	};
	
	return {
        
        init: function() {
        	documentSetting();
        }
    };
}();

$.osl.ready(function(){
	OSLPrj1000Popup.init();
});
</script>

<jsp:include page="/WEB-INF/jsp/lunaops/bottom/footer.jsp" />

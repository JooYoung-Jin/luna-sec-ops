<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/lunaops/top/header.jsp" />
<jsp:include page="/WEB-INF/jsp/lunaops/top/top.jsp" />
<jsp:include page="/WEB-INF/jsp/lunaops/top/aside.jsp" />

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
					<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm btn-elevate btn-elevate-air btn-view-type active" title="데이터 카드 형식으로 보기" data-title-lang-cd="spr1000.button.title.card" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="6" data-view-type="01">
						<i class="fa fa-table osl-padding-r0"></i>
					</button>
					<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm btn-elevate btn-elevate-air btn-view-type" title="데이터 테이블 형식으로 보기" data-title-lang-cd="spr1000.button.title.grid" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="7" data-view-type="02">
						<i class="fa fa-list osl-padding-r0"></i>
					</button>
				</div>
			</div>
		</div>
		
	</div>
	
	
	<div class="kt-portlet__head kt-portlet__head--lg osl-portlet__head__block ">
		
		<div class="col-lg-3 col-md-6 col-sm-12 kt-padding-r-0">
			<div class="osl-datatable-search" data-datatable-id="spr1000Table"></div>
		</div>
		
		
		<div class="col-lg-9 col-md-12 col-sm-12 text-right osl-mobile-text--left kt-padding-r-0">
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="spr1000Table" data-datatable-action="select" title="스프린트 관리 조회" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="5">
				<i class="fa fa-list"></i><span data-lang-cd="datatable.button.select">조회</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="spr1000Table" data-datatable-action="insert" title="스프린트 관리 등록" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="insert" tabindex="6">
				<i class="fa fa-plus"></i><span data-lang-cd="datatable.button.insert">등록</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="spr1000Table" data-datatable-action="update" title="스프린트 관리 수정" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="update" tabindex="7">
				<i class="fa fa-edit"></i><span data-lang-cd="datatable.button.update">수정</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="spr1000Table" data-datatable-action="delete" title="스프린트 관리 삭제" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="delete" tabindex="8">
				<i class="fa fa-trash-alt"></i><span data-lang-cd="datatable.button.delete">삭제</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="spr1000Table" data-datatable-action="sprStart" title="스프린트 관리 시작" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="excel" tabindex="">
				<i class="fas fa-play-circle"></i><span data-lang-cd="spr1000.button.sprStart">시작</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="spr1000Table" data-datatable-action="sprEnd" title="스프린트 관리 종료" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="print" tabindex="">
				<i class="fas fa-stop-circle"></i><span data-lang-cd="spr1000.button.sprEnd">종료</span>
			</button>
		</div>
		
	</div>
	

</div>

<div id="spr1000CardTable"></div>


<div class="kt_datatable osl-datatable-footer__divide" id="spr1000Table"></div>



<script>
"use strict";
var OSLSpr1000Popup = function () {
	var totalSprPoint = 0;
	var documentSetting = function(){
		var currentViewType = "01";
	
		// begin:: 스프린트 관리 데이터테이블
		$.osl.datatable.setting("spr1000Table",{
			cardUiTarget: $("#spr1000CardTable"),
			data: {
				source: {
					read: {
						url: "/spr/spr1000/spr1000/selectSpr1000SprListAjax.do"
					}
				},
			},
			columns: [
				{field: 'checkbox', title: '#', textAlign: 'center', width: 20, selector: {class: 'kt-checkbox--solid'}, sortable: false, autoHide: false},
				{field: 'rn', title: 'No.', textAlign: 'center', width: 30, autoHide: false, sortable: false},
				{field: 'sprTypeNm', title: '상태 ', textAlign: 'center', width: 100, searchType:"select", searchCd: "SPR00001", searchField:"sprTypeNm", sortField: "sprTypeNm"},
				{field: 'sprNm', title: '스프린트 이름', textAlign: 'center', width: 300, search:true},
				{field: 'sprDesc', title: '스프린트 설명', textAlign: 'center', width: 150, search:true},
				{field: 'sprStDt', title: '시작일', textAlign: 'center', width: 150, search: true, searchType:"date"},
				{field: 'sprEdDt', title: '종료일', textAlign: 'center', width: 150, search: true, searchType:"date"},
				{field: 'useNm', title: '사용 유무', textAlign: 'center', width: 100, search: true, searchType:"select", searchCd: "CMM00001", searchField:"useCd", sortField: "useCd"},
			],
			searchColumns:[
				{field: 'sprDtm', title: '기간', searchOrd:4, searchType:"daterange"}
			],
			actionBtn:{
				"title": "기능 버튼",
				"dblClick": true
			},
			actionTooltip:{
				"title": "기능 버튼",
				"update": $.osl.lang("spr1000.datatable.action.update"),
				"delete": $.osl.lang("spr1000.datatable.action.delete"),
				"dblClick": $.osl.lang("spr1000.datatable.action.dblClick")
			},
			actionFn:{
				"insert":function(datatableId){
					var data = {type:"insert"};
					var options = {
						autoHeight: false,
						modalSize: "md",
						idKey: datatableId,
						closeConfirm: false,
						modalTitle: $.osl.lang("spr1002.insert.title"),
					};
					
					$.osl.layerPopupOpen('/spr/spr1000/spr1000/selectSpr1002View.do',data,options);
				},
				"update":function(rowData, datatableId, type, rowNum, elem){
					var data = {
							type:"update"
							,paramPrjGrpId: rowData.prjGrpId
							,paramPrjId: rowData.prjId
							,paramSprId: rowData.sprId
						};
					var options = {
							autoHeight: false,
							modalSize: "md",
							idKey: datatableId,
							closeConfirm: false,
							modalTitle: $.osl.lang("spr1002.update.title"),
					};
					
					$.osl.layerPopupOpen('/spr/spr1000/spr1000/selectSpr1002View.do',data,options);
				},
				//스프린트 삭제
				"delete":function(rowDatas, datatableId, type, rowNum, elem){
					//선택 프로젝트 그룹 휴지통으로 이동
					var ajaxObj = new $.osl.ajaxRequestAction(
							{"url":"<c:url value='/spr/spr1000/spr1000/deleteSpr1000SprList.do'/>"}
							,{deleteDataList: JSON.stringify(rowDatas)});
					//AJAX 전송 성공 함수
					ajaxObj.setFnSuccess(function(data){
						if(data.errorYn == "Y"){
			   				$.osl.alert(data.message,{type: 'error'});
			   			}else{
			   				//삭제 성공
			   				$.osl.toastr(data.message);
			   				
			   				//datatable 조회
			   				$("button[data-datatable-id="+datatableId+"][data-datatable-action=select]").click();
			   			}
					});
					
					//AJAX 전송
					ajaxObj.send();
				},
				"dblClick": function(rowData, datatableId, type, rowNum, elem){
					var data = {
							paramSprId : rowData.sprId,
							paramSprStDt : rowData.sprStDt,
							paramSprEdDt : rowData.sprEdDt,
							paramSprNm: rowData.sprNm,
							paramSprDesc : rowData.sprDesc,
							paramRestDay : rowData.restDay,
							paramSprEndPercent : Math.trunc(rowData.sprEndPercent),
							paramSprTypeNm : rowData.sprTypeNm,
							paramSprTypeCd : rowData.sprTypeCd,
							paramUseCd: rowData.useCd,
						};
					
					var options = {
							autoHeight: false,
							modalSize: "xl",
							idKey: datatableId,
							closeConfirm: false,
							modalTitle: "스프린트 상세정보",
						};
					
					$.osl.layerPopupOpen('/spr/spr1000/spr1000/selectSpr1001View.do',data,options);
				},
				//스프린트 시작
				"sprStart": function(rowData, datatableId, type){
					var rowDatas = rowData;
					
					//선택 레코드 없는 경우
					if(rowDatas.length == 0){
						$.osl.alert($.osl.lang("spr1000.nonSelect"));
						return true;
					}
					//선택 레코드 1개 이상인 경우
					else if(rowDatas.length > 1){
						$.osl.alert($.osl.lang("spr1000.manySelect"));
						return true;
					}
					
					//스프린트 상태
					var sprInfo = rowData[0];
					
					//대기가 아닌 경우 시작 불가능
					if(sprInfo.sprTypeCd != "01" || sprInfo.useCd != "01"){
						$.osl.alert($.osl.lang("spr1000.sprTypeWaitMsg"));
						return true;
					}
					
					var data = {
							paramPrjGrpId: sprInfo.prjGrpId
							,paramPrjId: sprInfo.prjId
							,paramSprId: sprInfo.sprId
							,paramSprNm: sprInfo.sprNm
							,paramStartDt: sprInfo.sprStDt
							,paramEndDt: sprInfo.sprEdDt
						};
					var options = {
							modalTitle: "스프린트 시작",
							autoHeight: false,
							modalSize: "xl",
							idKey: datatableId,
							closeConfirm: false,
							ftScrollUse: false
						};
					$.osl.layerPopupOpen('/spr/spr1000/spr1000/selectSpr1003View.do',data,options);
					
					
				},
				//스프린트 종료
				"sprEnd": function(rowData, datatableId, type){
					var rowDatas = rowData;
					
					//선택 레코드 없는 경우
					if(rowDatas.length == 0){
						$.osl.alert($.osl.lang("spr1000.nonSelect"));
						return true;
					}
					//선택 레코드 1개 이상인 경우
					else if(rowDatas.length > 1){
						$.osl.alert($.osl.lang("spr1000.manySelect"));
						return true;
					}
					
					//스프린트 상태
					var sprInfo = rowData[0];
					
					//시작 중이 아닌 경우 시작 불가능
					if(sprInfo.sprTypeCd != "02"){
						$.osl.alert($.osl.lang("spr1000.sprTypeStartMsg"));
						return true;
					}
					
					var data = {
							paramPrjGrpId: sprInfo.prjGrpId
							,paramPrjId: sprInfo.prjId
							,paramSprId: sprInfo.sprId
							,paramSprNm: sprInfo.sprNm
							,paramSprDesc: sprInfo.sprDesc
							,paramStartDt: sprInfo.sprStDt
							,paramEndDt: sprInfo.sprEdDt
						};
					var options = {
							modalTitle: "스프린트 종료",
							autoHeight: false,
							modalSize: "xl",
							idKey: datatableId,
							backdrop: true,
							closeConfirm: false,
							
						};
					$.osl.layerPopupOpen('/spr/spr1000/spr1000/selectSpr1004View.do',data,options);
				}
			},
			callback:{
				initComplete: function(evt,config){
					fnViewerChange();
				},
				ajaxDone: function(evt, list){
					var sprintStr = '';
					var rowCnt = 0;
					$.each(list, function(idx, map){
						//스프린트 상태에 따라 값
						var sprTypeClass = "kt-media--primary";
						var sprTypeNm = map.sprTypeNm;
						
						if(map.sprTypeCd == "02"){
							sprTypeClass = "kt-media--danger";
						}else if(map.sprTypeCd == "03"){
							sprTypeClass = "kt-media--warning";
						}
						//상태가 대기이고 사용 유무가 아니오인경우
						else if(map.useCd == "02"){
							sprTypeClass = "kt-media--dark";
							sprTypeNm = "미 사용";
						}
						
						if(rowCnt == 0){
							sprintStr += '<div class="row">';
						}
						var restDay = 0;
						//종료일 경우 남은 일 수 0
						if(map.sprTypeCd == "03"){
							restDay = 0;
						}else{
							restDay = $.osl.escapeHtml(map.restDay);
						}
						//카드 UI
						sprintStr +=
							'<div class="col-lg-6 col-md-12 col-sm-12">'
								//
								+'<div class="kt-portlet kt-portlet--mobile">'
									//
									+'<div class="kt-portlet__head kt-portlet__head--lg">'
										//'
										+'<div class="kt-portlet__head-label">'
											+'<label class="kt-checkbox kt-checkbox--single kt-checkbox--solid"><input type="checkbox" value="'+idx+'" data-datatable-id="spr1000Table">&nbsp;<span></span></label>'
											+'<h5 class="kt-font-boldest"><span class="badge badge-primary kt-margin-r-10">No. '+map.rn+'</span></h5>'
											+'<h5><span class="badge badge-primary" title="스프린트 기간" data-toggle="kt-tooltip" data-skin="brand" data-placement="top"><i class="far fa-calendar-alt kt-margin-r-10"></i>'+map.sprStDt+' ~ '+map.sprEdDt+'</span></h5>'
										+'</div>'
										//
										//
										+'<div class="kt-portlet__head-toolbar">'
											+'<div class="dropdown dropdown-inline">'
												+'<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm btn-elevate btn-elevate-air" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">'
													+'<i class="fa fa-bars osl-padding-r0"></i>'
												+'</button>'
												+'<div class="dropdown-menu dropdown-menu-right" data-datatable-rownum="'+idx+'">'
													+'<div class="dropdown-item" data-datatable-id="spr1000Table" data-datatable-expans="dropdown" data-datatable-action="update"><i class="fa fa-edit kt-font-brand"></i>'+$.osl.lang("spr1000.menu.update")+'</div>'
													+'<div class="dropdown-item" data-datatable-id="spr1000Table" data-datatable-expans="dropdown" data-datatable-action="delete"><i class="fa fa-trash kt-font-brand"></i>'+$.osl.lang("spr1000.menu.delete")+'</div>'
													+'<div class="dropdown-divider"></div>'
													+'<div class="dropdown-item" data-datatable-id="spr1000Table" data-datatable-expans="dropdown" data-datatable-action="sprStart"><i class="fas fa-play-circle kt-font-brand"></i>'+$.osl.lang("spr1000.menu.sprintStart")+'</div>'
													+'<div class="dropdown-item" data-datatable-id="spr1000Table" data-datatable-expans="dropdown" data-datatable-action="sprEnd"><i class="fas fa-stop-circle kt-font-brand"></i>'+$.osl.lang("spr1000.menu.sprintEnd")+'</div>'
													+'<div class="dropdown-divider"></div>'
													+'<div class="dropdown-item" data-datatable-id="spr1000Table" data-datatable-expans="dropdown" data-datatable-action="dblClick"><i class="fas fa-clipboard-list kt-font-brand"></i>'+$.osl.lang("spr1000.menu.sprintDetail")+'</div>'
													/* +'<div class="dropdown-divider"></div>'
													+'<div class="dropdown-item" id=""><i class="fas fa-list kt-font-brand"></i>'+$.osl.lang("spr1000.menu.sprintMeetList")+'</div>'
													+'<div class="dropdown-item" id=""><i class="fas fa-list kt-font-brand"></i>'+$.osl.lang("spr1000.menu.sprintResultList")+'</div>'
													+'<div class="dropdown-divider"></div>'
													+'<div class="dropdown-item" id=""><i class="fas fa-print kt-font-brand"></i>'+$.osl.lang("spr1000.menu.sprintReport")+'</div>' */ 
												+'</div>'
											+'</div>'
										+'</div>'
										//
									+'</div>'
									
									+'<div class="kt-portlet__body">'
										+'<div class="d-flex kt-padding-l-15 align-items-center">'
											+'<div class="kt-media kt-media--xl kt-media--circle '+sprTypeClass+' osl-margin-r-2rm">'
												+'<span>'+sprTypeNm+'</span>'
											+'</div>'
											+'<div class="d-flex flex-column osl-margin-r-auto osl-word__break">'
												+'<h5 class="kt-font-boldest text-truncate" title="'+$.osl.escapeHtml(map.sprNm)+'" data-toggle="kt-tooltip" data-skin="brand" data-placement="top"> '+$.osl.escapeHtml(map.sprNm)+'</h5>'
												+'<span class="text-muted text-truncate" title="'+$.osl.escapeHtml(map.sprDesc)+'" data-toggle="kt-tooltip" data-skin="brand" data-placement="top">'+$.osl.escapeHtml(map.sprDesc)+'</span>'
											+'</div>'
										+'</div>'
										+'<div class="d-flex flex-wrap osl-margin-t-2rm kt-padding-l-20">'
											+'<div class="osl-margin-r-3rm osl-margin-b-175rm d-flex flex-column">'
												+'<span class="osl-margin-b-1rm"><i class="far fa-calendar-alt kt-font-brand kt-margin-r-5"></i>'+$.osl.lang("prj1000.startDate")+'</span>'
												+'<h5><span class="badge badge-primary">'+$.osl.escapeHtml(map.sprStDt)+'</span></h5>'
											+'</div>'
											+'<div class="osl-margin-r-3rm osl-margin-b-175rm d-flex flex-column">'
												+'<span class="osl-margin-b-1rm"><i class="far fa-calendar-alt kt-font-brand kt-margin-r-5"></i>'+$.osl.lang("prj1000.endDate")+'</span>'
												+'<h5><span class="badge badge-danger">'+$.osl.escapeHtml(map.sprEdDt)+'</span></h5>'
											+'</div>'
											+'<div class="osl-margin-r-3rm osl-margin-b-175rm d-flex flex-column">'
												+'<span class="osl-margin-b-1rm"><i class="far fa-calendar-alt kt-font-brand kt-margin-r-5"></i>남은 일수</span>'
												+'<h5><span class="badge badge-warning osl-min-width-85">'+restDay+'</span></h5>'
											+'</div>'
											+'<div class="osl-flex-row-fluid osl-margin-b-175rm">'
												+'<div class="osl-progress">'
													+'<div class="osl-margin-b-1rm"><i class="fa fa-chart-line kt-font-brand kt-margin-r-5"></i><span>'+$.osl.lang("prj1000.completedRatio")+'</span></div>'
													+'<div class="progress osl-prj-group-md">'
														+'<div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width:'+Math.trunc(map.sprEndPercent)+'%" aria-valuenow="'+Math.trunc(map.sprEndPercent)+'" aria-valuemin="0" aria-valuemax="100">'+Math.trunc(map.sprEndPercent)+'%</div>'
													+'</div>'
												+'</div>'
											+'</div>'
										+'</div>'
										+'<div class="row">'
											+'<div class="col-6 osl-min-h-px--202">'
												+'<div class="osl-widget osl-flex-row-fluid flex-wrap">'
													+'<div class="osl-widget-info__item osl-flex-row-fluid">'
														+'<div class="osl-widget-info__item-icon"><img src="/media/osl/icon/reqAll.png"></div>'
														+'<div class="osl-widget-info__item-info">'
															+'<a href="#" class="osl-widget-info__item-title">'+"전체"+'</a>'
															+'<div class="osl-widget-info__item-desc">'+$.osl.escapeHtml(map.reqAllCnt)+'</div>'
														+'</div>'
													+'</div>'
													+'<div class="osl-widget-info__item osl-flex-row-fluid">'
														+'<div class="osl-widget-info__item-icon"><img src="/media/osl/icon/reqInProgress.png"></div>'
														+'<div class="osl-widget-info__item-info">'
															+'<a href="#" class="osl-widget-info__item-title">'+"진행 중"+'</a>'
															+'<div class="osl-widget-info__item-desc">'+$.osl.escapeHtml(map.reqProgressCnt)+'</div>'
														+'</div>'
													+'</div>'
												+'</div>'
												+'<div class="osl-widget osl-flex-row-fluid flex-wrap">'
													+'<div class="osl-widget-info__item osl-flex-row-fluid">'
														+'<div class="osl-widget-info__item-icon"><img src="/media/osl/icon/reqDone.png"></div>'
														+'<div class="osl-widget-info__item-info">'
															+'<a href="#" class="osl-widget-info__item-title">'+"완료"+'</a>'
															+'<div class="osl-widget-info__item-desc">'+$.osl.escapeHtml(map.reqDoneCnt)+'</div>'
														+'</div>'
													+'</div>'
													+'<div class="osl-widget-info__item osl-flex-row-fluid">'
														+'<div class="osl-widget-info__item-icon"><img src="/media/osl/icon/reqPointer.png"></div>'
														+'<div class="osl-widget-info__item-info">'
															+'<a href="#" class="osl-widget-info__item-title">'+"평균 완료 시간"+'</a>'
															+'<div class="osl-widget-info__item-desc">'+$.osl.escapeHtml(map.avgTime.toFixed(1))+'</div>'
														+'</div>'
													+'</div>'
												+'</div>'
											+'</div>'
											+'<div class="col-6 osl-min-h-px--202">'
												+'<div class="osl-card__data--empty osl-min-h-px--202" id="burnDownChart'+map.sprId+'">'
												+'</div>'
											+'</div>'
										+'</div>'
									+'</div>'
									//
								+'</div>'
								//
							+'</div>';
						
						rowCnt++;
						if(rowCnt == 2){
							sprintStr += '</div>';
							rowCnt = 0;
						}
					});
					
					//로드된 데이터 CARD형식으로 추가
					$("#spr1000CardTable").html(sprintStr);
					//차트 그리기
					$.each(list, function(idx, map){
						drawChart(map);
					})
					
					//툴팁시작
					KTApp.initTooltips();
				}
			}
		});
		// end:: 그룹 요구사항 관리 데이터테이블
		
		//뷰 변경 이벤트
		$(".btn-view-type").click(function(){
			var viewType = $(this).data("view-type");
			
			//active 교체
			$(".btn-view-type.active").removeClass("active");
			$(this).addClass("active");
			
			currentViewType = viewType;
			
			//뷰어 변경
			fnViewerChange();
		});
		
		//카드형, 목록형
		var fnViewerChange = function(){
			//현재 viewType에 따라 show/hide
			
			//카드 형식
			if(currentViewType == "01"){
				$("#spr1000Table .kt-datatable__table").css({visibility: "hidden", height: 0});
				$("#spr1000CardTable").show();
			//데이터테이블 형식
			}else{	
				$("#spr1000CardTable").hide();
				$("#spr1000Table .kt-datatable__table").css({visibility: "visible",height: "auto"});
			}
		}
	};
	//차트그리기
 	var drawChart = function(rowdata){
 		var ajaxObj = new $.osl.ajaxRequestAction(
 				{"url":"<c:url value='/spr/spr1000/spr1000/selectSpr1000ChartInfoAjax.do'/>", "async":"false"},{sprId: rowdata.sprId});
 		//AJAX 전송 성공 함수
 		ajaxObj.setFnSuccess(function(data){
 			if(data.errorYn == "Y"){
 				$.osl.alert(data.message,{type: 'error'});
 			}else{
 				
 				var chartData = data.chartData;
 				var today = new Date();
 				var endDt  = today.getFullYear() + "-" + (today.getMonth()+1) + "-" + today.getDate();
 				
 				totalSprPoint = rowdata.sprPoint;
 				//차트데이터 가공
 				var seriesData = getDataRangeData(rowdata.sprStDt, rowdata.sprEdDt, "1", chartData);
 				
 				//번다운차트 출력
 				if(rowdata.sprTypeCd == '01'){
	 				$("#burnDownChart"+rowdata.sprId).text("데이터 없음")
 				}else{
	 				drawBurnDownChart(seriesData, rowdata.sprId);
 				}
 			}	
 		});
 		
 		ajaxObj.send();
 	}
 	//번다운 차트 그리기
 	var drawBurnDownChart = function(dateRange, sprId){
 		 var chart = $.osl.chart.setting("apex","burnDownChart"+sprId,{
 			//차트 데이터 설정
				data:{										
					param:{
						dataArr: dateRange,	
						 //x축 키값
						 xKey:"time",
						 key:{
							 key1:"idealBurnDownLine",
							 key2:"burnDownSprPoint"
						 },
						 keyNm:{
							 keyNm1:"이상적인 번다운라인",
							 keyNm2:"실제 번다운라인"
						 },
						 //차트 타입
						 chartType:"line",
						 dataType: "local"
					}
				},
				fill:{
					type:false
				},
				chart:{
					toolbar: {
						show:false
					},
					height:180,
					//라인 색상
					colors: ["#ffb822","#840ad9"],
					title: {
						text: "번다운차트",
						align: "center",
					},
					stroke: {
				          curve: 'straight'
				    },
			        animations:{
						enabled:false
					},
				    dataLabels:{
				    	enabled:true,
				    	formatter:function(val, opts){
				    		var valIndex = new Date(opts.ctx.data.twoDSeriesX[opts.dataPointIndex]).format("MM-dd");
				    		var xlabelList = opts.w.globals.labels.map(function(x){return new Date(x).format("MM-dd")});
				    		//해당 데이터가 x라벨에 존재할 경우 표출 아니면 미표출
				    		if(xlabelList.includes(valIndex)){
				    			if($.osl.isNull(val)){
				    				return "";
				    			}
				    			return val;
				    		}else{
					    		return "";
				    		} 
				    	}
				    },
				    grid: {
				          borderColor: '#e7e7e7',
				          row: {
				            colors: ['#f3f3f3', 'transparent'], 
				            opacity: 0.5
				          },
				    },
					xaxis: {
				        type: 'datetime',
				        //출력 형태
				        labels: {
				        	hideOverlappingLabels :true,
				            formatter: function(value){
				            	return new Date(value).format("MM-dd");
				            }
				        },
				        //x축 몇개를 표시할 것인지
				        tickAmount: '5',
				        //중간에 점찍기
				        tickPlacement: 'between',
		        	},
					yaxis: {
						show:true
		        	},
		        	grid:{
		        		show:true
		        	}
				}
			});
		 }
 	//차트 데이터 정제
 	var getDataRangeData = function(sttDt, endDT, type, data){
 		//이상적인 번업라인 데이터 만들기
 		if(data.length!=0){
	 		//누적 스토리포인트 날짜:스토리포인트 형태로 변환
	 		var sprPoint = [];
	 		$.each(data, function(index, value){
	 			var _series = {};
	 			_series[value.reqEdDtm] = value.cumSprPoint;
	 			sprPoint.push(_series);
	 		});
 		}
 		//시작일자와 종료일자 사이의 날짜를 일별로 자르기.
 		if(type=='1'){
 			var resDay = [];
	 	 	var stDay = new Date(sttDt);
	 	   	var edDay = new Date(endDT);    	
	 	  	while(stDay.getTime() <= edDay.getTime()){
	 	  			var ideal = 0;
	 	  			var _mon = (stDay.getMonth()+1);
	 	  			_mon = _mon < 10 ? '0'+_mon : _mon;
	 	  			var _day = stDay.getDate();
	 	  			_day = _day < 10 ? '0'+_day : _day;
	 	  			var _time = stDay.getFullYear() + '-' + _mon + '-' +  _day;
	 	  			if(_time == data.reqEdDtm){
	 	  				resDay.push({"time":stDay.getFullYear() + '-' + _mon + '-' +  _day})
	 	  			}else{  
		 	   		resDay.push({"time":stDay.getFullYear() + '-' + _mon + '-' +  _day});
	 	  			
	 	  			}
	 	   			stDay.setDate(stDay.getDate() + 1);
	 	   			ideal = ideal + 10
	 	   	}
	 	//주별로
 		}else if(type=='2'){
 			
 		}
 		var length = resDay.length
 		//전체 스토리포인트 총합 가져와서 / 일수로 나누기
 		var step = totalSprPoint / (length-1)
 		//이상적인 다운라인 데이터 작성
 		//일수
 		var end = totalSprPoint;
 		$.each(resDay, function(index, value){
 			//바로종료할경우
	 		if(length == 1){
	 			value['idealBurnDownLine'] = totalSprPoint;
	 		//2일만에 종료할경우
	 		}else if(length == 2){
	 			value['idealBurnDownLine'] = end;
	 			end -= totalSprPoint;
	 		//나머지
	 		}else{
	 			value['idealBurnDownLine'] = end.toFixed(1);
	 			end -= step	
	 		}
 		})
 		if(data.length!=0){
	 		//오늘 날짜
	 		var today = new Date();
	 		//실제 스토리포인트 데이터 작성
	 		for(var dayIndex = 0; dayIndex < resDay.length; dayIndex++){
	 			var match = false;
	 			//오늘 날짜보다 이후의 날짜는  추가하지않음.
	 			var gap = new Date(resDay[dayIndex].time).getTime() - today.getTime()
	 			if(gap < 0){
		 			for(var dataIndex = 0 ; dataIndex < data.length ; dataIndex ++){
		 				if(resDay[dayIndex].time == data[dataIndex].reqEdDtm){
		 					match = true;
		 					//매치할 경우 가져온 데이터에서 할당한다.
		 					resDay[dayIndex]['burnDownSprPoint'] = totalSprPoint - data[dataIndex].cumSprPoint
		 					break;
		 				}
		 			}
		 			//매치하지 않을 경우
		 			if(!match){
		 				//처음 시작은 0으로
		 				if(dayIndex == 0){
		 					resDay[dayIndex]['burnDownSprPoint'] = totalSprPoint;
		 				//매치하지 않을 경우 전의 sprPoint를 가져와서 할당한다.
		 				}else{
			 				resDay[dayIndex]['burnDownSprPoint'] = resDay[dayIndex - 1]['burnDownSprPoint']; 
		 				}
		 			}
	 			}else{
	 				resDay[dayIndex]['burnUpSprPoint'] = null;
					resDay[dayIndex]['burnDownSprPoint'] = null;
	 			}
	 		}
 		}
 		return resDay;
 	}
	return {
        // public functions
        init: function() {
        	documentSetting();
        }
    };
}();

$.osl.ready(function(){
	OSLSpr1000Popup.init();
});
</script>

<jsp:include page="/WEB-INF/jsp/lunaops/bottom/footer.jsp" />

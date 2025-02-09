<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/lunaops/top/header.jsp" />
<jsp:include page="/WEB-INF/jsp/lunaops/top/top.jsp" />
<jsp:include page="/WEB-INF/jsp/lunaops/top/aside.jsp" />

<div class="kt-portlet kt-portlet--mobile ">
	<div class="kt-portlet__head kt-portlet__head--lg">
		<div class="kt-portlet__head-label">
			<h4 class="kt-font-boldest kt-font-brand">
				<i class="fa fa-th-large kt-margin-r-5"></i><c:out value="${sessionScope.selMenuNm}"/>
			</h4>
		</div>
		<div class="kt-portlet__head-toolbar">
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="req3000Table" data-datatable-action="select" title="그룹 요구사항 목록 조회" data-toggle="kt-tooltip" data-skin="brand" data-title-lang-cd="req3000.datatable.button.title.select" data-placement="bottom" data-auth-button="select" tabindex="5">
				<i class="fa fa-list"></i><span data-lang-cd="datatable.button.select">조회</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="req3000Table" data-datatable-action="insert" title="그룹 요구사항 목록 추가" data-toggle="kt-tooltip" data-skin="brand" data-title-lang-cd="req3000.datatable.button.title.insert" data-placement="bottom" data-auth-button="insert" tabindex="6">
				<i class="fa fa-plus"></i><span data-lang-cd="datatable.button.insert">추가</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="req3000Table" data-datatable-action="update" title="그룹 요구사항 목록 수정" data-toggle="kt-tooltip" data-skin="brand" data-title-lang-cd="req3000.datatable.button.title.update" data-placement="bottom" data-auth-button="update" tabindex="7">
				<i class="fa fa-edit"></i><span data-lang-cd="datatable.button.update">수정</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="req3000Table" data-datatable-action="delete" title="그룹 요구사항 목록 삭제" data-toggle="kt-tooltip" data-skin="brand" data-title-lang-cd="req3000.datatable.button.title.delete" data-placement="bottom" data-auth-button="delete" tabindex="8">
				<i class="fa fa-trash-alt"></i><span data-lang-cd="datatable.button.delete">삭제</span>
			</button>
			
			<!-- <button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="req3000Table" data-datatable-action="assign" title="그룹 요구사항 목록 엑셀" data-toggle="kt-tooltip" data-skin="brand" data-title-lang-cd="req3000.datatable.button.title.excel" data-placement="bottom" data-auth-button="excel" tabindex="">
				<i class="fas fa-file-excel"></i><span data-lang-cd="datatable.button.excel">엑셀</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="req3000Table" data-datatable-action="assign" title="그룹 요구사항 목록 프린트" data-toggle="kt-tooltip" data-skin="brand" data-title-lang-cd="req3000.datatable.button.title.print" data-placement="bottom" data-auth-button="print" tabindex="">
				<i class="fas fa-print"></i><span data-lang-cd="datatable.button.print">프린트</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="req3000Table" data-datatable-action="assign" title="그룹 요구사항 목록 양식 다운로드" data-toggle="kt-tooltip" data-skin="brand" data-title-lang-cd="req3000.datatable.button.title.download" data-placement="bottom" data-auth-button="form-download" tabindex="">
				<i class="fas fa-file-download"></i><span data-lang-cd="datatable.button.download">양식 다운로드</span>
			</button>
			<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="req3000Table" data-datatable-action="assign" title="그룹 요구사항 목록 업로드" data-toggle="kt-tooltip" data-skin="brand" data-title-lang-cd="req3000.datatable.button.title.upload" data-placement="bottom" data-auth-button="upload" tabindex="">
				<i class="fas fa-file-upload"></i><span data-lang-cd="datatable.button.upload">업로드</span>
			</button> -->
		</div>
	</div>
	<div class="kt-portlet__body">
		<div class="row">
			<div class="col-lg-3 col-md-6 col-sm-12">
				<div class="osl-datatable-search" data-datatable-id="req3000Table"></div>
			</div>
		</div>
		<div class="kt_datatable" id="req3000Table"></div>
	</div>
</div>



<script>
"use strict";
var OSLReq3000Popup = function () {
	
	var documentSetting = function(){
		var config = {
				data:{
					source:{
						read:{
							url:"/req/req3000/req3000/selectReq3000ListAjaxView.do"
						}
					}
				},
		columns : [
			{field: 'checkbox', title:'#', textAlign:'center', width:20, selector: {class: 'kt-checkbox--solid'}, sortable:false, autoHide:false},
			{field: 'rn', title:"No.", textAlign: 'center', width: 25, autoHide: false, sortable: false},
			{field: 'reqGrpNm', title: '그룹 요구사항 명', textAlign: 'left', width: 150, search: true, sortable: false,searchOrd: 1},
			{field: 'reqGrpLinkCnt', title: '연결 요구사항 수', textAlign: 'center', width: 150, search: false,
				template: function (row) {
					var reqGrpLinkCnt = row.reqGrpLinkCnt;
					if(reqGrpLinkCnt == 0){
						reqGrpLinkCnt = "0";
					}
					return reqGrpLinkCnt;
				},
			},
			{field: 'reqGrpUsrNm', title: '요청자 명', textAlign: 'left', width: 150, search: true, sortable:false,searchOrd: 2,
				template: function (row) {
					return $.osl.user.usrImgSet(row.reqUsrImgId, row.reqGrpUsrNm);
				},
				onclick: function(rowData){
					$.osl.user.usrInfoPopup(rowData.reqGrpUsrId);
				}
			},
			{field: 'reqGrpUsrEmail', title: '요청자 e-mail', textAlign: 'left', width: 150, search: true, sortable: true,searchOrd: 3},
			{field: 'reqGrpUsrDeptNm', title: '요청자 조직', textAlign: 'left', width: 300, sortable: false, search: false},
			{field: 'reqGrpUsrNum', title: '요청자 연락처', textAlign: 'left', width: 100, search: true, sortable: false, search: true,searchOrd: 4},
			{field: 'regGrpChargerNm', title: '담당자 명', textAlign: 'left', width: 150, search: true,sortable: false,searchOrd: 5,
				template: function (row) {
					return $.osl.user.usrImgSet(row.reqGrpChargerImgId, row.reqGrpChargerNm);
				},
				onclick: function(rowData){
					$.osl.user.usrInfoPopup(rowData.reqGrpChargerId);
				}
			},
			{field: 'regDtmDay', title: '등록일', textAlign: 'center', width: 100, search: true, searchType:"daterange",searchOrd:10}
		],
		searchColumns:[
			{field: 'reqGrpChargerEmail', title: '담당자 EMAIL', searchType:"text",searchOrd: 6},
			{field: 'reqGrpChargerNum', title: '담당자 연락처', searchType:"text",searchOrd: 7},
			{field: 'reqGrpKey', title: '그룹 요구사항 Key', searchType:"text",searchOrd: 8},
			{field: 'useCD', title: '사용유무', searchType:"select", searchCd:"CMM00001",searchOrd: 9},
		],
		rows:{
			clickCheckbox:true
		},
		actionBtn:{
			"dblClick":true,
			
			"insert":false,
			"update":true,
			"title": $.osl.lang("datatable.action.functionNm")
		},
		actionTooltip:{
			"insert":$.osl.lang("req3000.datatable.action.insert"),
			"update":$.osl.lang("req3000.datatable.action.update"),
			"dblClick": $.osl.lang("req3000.datatable.action.dblClick"),
			"delete": $.osl.lang("req3000.datatable.action.delete"),
			
		},
		actionFn:{
			"insert":function(datatableId, type, rowNum){
				var data = {type:"insert"};
				var options = {
						idKey: datatableId,
						modalSize: "xl",
						modalTitle: $.osl.lang("req3001.title"),
						closeConfirm: false,
						modalTitle:$.osl.lang("req3000.title.insert"),
					};
				
				$.osl.layerPopupOpen('/req/req3000/req3000/selectReq3001View.do',data,options);
			},"update":function(rowData, datatableId, type, rowNum, elem){
				
				var data = {
						type:"update",
						paramPrjGrpId : rowData.prjGrpId,
						paramPrjId : rowData.prjId,
						paramReqGrpId : rowData.reqGrpId,
						paramReqGrpUsrId : rowData.reqGrpUsrId,
						paramReqGrpChargerId :rowData.reqGrpChargerId
					};
				
				var options = {
						idKey: datatableId,
						modalTitle: $.osl.lang("req3001.title"),
						closeConfirm: false,
						modalSize: "xl",
						modalTitle:$.osl.lang("req3000.title.update"),
					};
				
				$.osl.layerPopupOpen('/req/req3000/req3000/selectReq3001View.do',data,options);
				
			},"delete":function(rowDatas, datatableId, type, rowNum, elem){
				
				var data = {
						type:"delete",
						paramRowData:JSON.stringify(rowDatas),
						datatableId:datatableId
				};
				
				var ajaxObj = new $.osl.ajaxRequestAction(
						{"url":"<c:url value='/req/req3000/req3000/deleteReq3000ReqListAjax.do'/>"}
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
				
			},"dblClick":function(rowData, datatableId, type, rowNum){
				var data = {
						
						paramPrjGrpId : rowData.prjGrpId,
						paramPrjId : rowData.prjId,
						paramReqGrpId : rowData.reqGrpId,
						paramReqGrpUsrId : rowData.reqGrpUsrId,
						paramReqGrpChargerId :rowData.reqGrpChargerId
					};
				var options = {
						idKey: rowData.reqId,
						modalTitle: "그룹 요구사항 상세정보",
						closeConfirm: false,
						modalSize: "xl",
						modalTitle:$.osl.lang("req3000.title.detail"),
					};
				
				$.osl.layerPopupOpen('/req/req3000/req3000/selectReq3002View.do',data,options);	
				}
			}
		}
		
		$.osl.datatable.setting("req3000Table", config);
		
		
	}
	return {
        
        init: function() {
        	documentSetting();
        }
        
    };
}();

$.osl.ready(function(){
	OSLReq3000Popup.init();
});
</script>

<jsp:include page="/WEB-INF/jsp/lunaops/bottom/footer.jsp" />

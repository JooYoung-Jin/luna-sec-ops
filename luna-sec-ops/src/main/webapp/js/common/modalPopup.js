/**
 * 	function 명 	: modal_popup
 *  function 설명	: 레이어 팝업을 호출한다.
 *  @param url			: 호출 URL
 *  @param data		: 1. json 형식 ex> {"key1" : "value1", "key2" : "value2"}
 *  			  2. form serialize 형식 ex> $("#formObj").serialize(); => id=jht&pw=jht
 *  @author 진주영
 *  @sinc 2019-05-08
 */
var modalCount = 0;

//모달창 닫기 이벤트 중복 방지
var modalCloseFlag = false;

//alert 중복 방지
var modalCloseAlert = false;

$(document).on('shown.bs.modal', '.modal', function () {
	//zIndex 계산
    var zIndex = 1040 + (10 * modalCount);
	
	//최근 열린 모달 z-index 설정
    $(this).css('z-index', zIndex);
	
	//모달 애니메이션 동작
    setTimeout(function() {
        $('.modal-backdrop').not('.modal-stack').css('z-index', zIndex - 1).addClass('modal-stack');
    }, 0);
	
	$(this).find(".kt-select2").select2({width: '100%'});
	
	//portlet
	if($(this).find(".kt-portlet[data-ktportlet=true]").length > 0){
		$.each($(this).find(".kt-portlet[data-ktportlet=true]"), function(idx, map){
			new KTPortlet($(map).attr("id"));
		});
	}
	
	//모달 포커싱
	$(this).focus();
	
	//모달 카운트 추가
    modalCount = modalCount + 1;
});

//멀티 모달창의경우 모달창 닫힐때 스크롤바 생기는 오류 수정
$(document).on('hidden.bs.modal', '.modal', function () {
	//draggable 소멸
	var draggie = $(this).data('draggabilly');
	if(!$.osl.isNull(draggie)){
		draggie.destroy();
	}
	
	//열린 모달창이 존재하는 경우
	if($('.modal:visible').length > 0){
		//모달창 오픈 상태로 변경
		$(document.body).addClass('modal-open');
	}
	
	//해당 모달창 제거
	$(this).remove();
	
	//모달 카운트
	modalCount = modalCount - 1;
	
	//메인 모달이 없는경우 그 외 모든 .modal 제거
	var mainModalCnt = $(".modal[id^=lpx]").length;
	if(mainModalCnt == 0){
		$(".modal:not([id]), .note-popover").remove();
	}
	
});


//모달창 닫는 경우 경고메시지 출력
$(document).on('hide.bs.modal', '.modal', function () {
	if(event){
		//중복 이벤트 중지
		event.cancelable = true;
		event.stopPropagation();
		event.preventDefault();
		event.returnValue = false;
	}
	
	//alert창 떠 있는경우 이벤트 중지
	if(modalCloseAlert){
		return false;
	}
	//모달 object
	var that = this;
	//모달 창  닫는경우
	if(modalCloseFlag){
		modalCloseFlag = false;
		return true;
	}
	
	//경고창 없는경우 바로 닫기
	if(!$(that).data("closeconfirm")){
		//backdrop이 true인 경우
		if($(that).data("backdrop")==true && event.path.length != 5 || event.keyCode == 27){
			modalCloseFlag = false;
			return true;
		}
	}
	
	//alert flag
	modalCloseAlert = true;
	
	$.osl.confirm($.osl.lang("common.modal.closeAlert"),null,function(result) {
    	modalCloseAlert = false;
        if (result.value) {
        	//모달창 닫기
        	modalCloseFlag = true;
        	
        	//모달창 닫기 이벤트
        	$(that).modal('hide');
        }
    });

	
	//모달창 닫기 이벤트 중지
	return false;
});
/**
 * modal_popup - 모달창 오픈(팝업창 - 기존 레이어팝업)
 * @param url		: 모달창 내용 ajax url
 * @param data		: 모달창 ajax에 전달할 data
 * @param opts		: 모달창 옵션
 * @opt
 * 			modalSize		: 모달 창 크기 [fs, xl, lg, md, sm] - (fs: full screen)
 * 			fitScreen		: 모달 창 높이를 브라우저 높이에 맞게 조절 (max-width 1024 이하에서는 height 100% 적용)
 * 			backdrop		: 모달 창 영역 외에 클릭으로 모달 창 닫기 여부 [true - default, false - 배경 마스크 제거 및 백드롭 중지, "static" - 배경 마스크 출력 및 백드롭 중지]
 * 			keyboard		: 키보드 ESC 버튼으로 모달 창 닫기 여부
 * 			showLoading		: 모달 창 오픈시 로딩화면 여부
 * 			closeConfirm	: 모달 창 닫기 클릭 했을때 닫을건지 경고창 여부
 * 			idKeyDuple		: 같은 모달 창 중복 팝업 여부 (권장 하지 않음, 변수 중복 문제 등)
 * 			idKey			: 모달 창을 오픈한 객체(같은 모달 중복 팝업 방지) 
 * 			focus			: open modal auto focusing
 * 			autoHeight		: 브라우저 높이 조절 시 자동으로 모달 사이즈 맞춤
 * 			draggable		: 모달 창 이동 가능 여부 (F2키 누를 시 오픈된 모든 모달 창 위치 원래대로)
 * 			class			: header, body, footer에 추가 class 선언
 * 			ftScrollUse		: 퍼펙트 스크롤 적용 유무, false인경우 브라우저 기본 스크롤 적용 (기본 값 true)
 */
var modal_popup = function(url, data, opts){
	var options;
	var opts = opts;
	
	//기본 옵션
	var defaultOptions = {
			modalSize: 'lg',
			fitScreen: true,
			backdrop: true,
			keyboard: true, 
			showLoading: true,
			closeConfirm: true,
			idKeyDuple: false,
			focus: false,
			autoHeight: true,
			draggable: true,
			ftScrollUse: true,
			'class': {
				/*
				 * header css 상세 부여
				 * header: {
				 * 		header: "",
				 * 		headerTitle: "",
				 * 		headerBtn: ""
				 * }
				 * */
				"header": "",
				"body": "",
				"footer": ""
			}
	};
	
	//options 적용
	options = $.extend(true, defaultOptions, opts, opts);
	
	//같은 모달 중복 방지 체크
	if(!options.idKeyDuple){
		if($(".modal[data-idkeyduple=false]").length > 0 && $(".modal[data-idkeyduple=false]").data("idkey") == options.idKey){
			$.osl.alert($.osl.lang("common.error.modalDuple"));
			return false;
		}
	}
	
	//중복 모달 구분 id
	var layerIndex = $(".modal").length;
	var layerBoxDivId = "lpx"+layerIndex;
	
	//모달 타입에 따른 class 지정 (default)
	var modalContentClass = '';
	var modalSize = "modal-"+options.modalSize;
	
	//모달 제목
	var modalTitle = '';
	if(options.hasOwnProperty("modalTitle")){
		modalTitle = $.osl.escapeHtml(options.modalTitle);
	}

	//모달 footer button 채우기
	var footerBtnStr = '';
	if(options.hasOwnProperty("footerBtn")){
		footerBtnStr = options.footerBtn.join("");
	}
	
	var classHeader = options.class.header;
	var classHeaderTitle = classHeaderBtn = "";
	
	//header css 분기(String, object)
	if(typeof options.class.header == "object"){
		if(options.class.header.hasOwnProperty("header")){
			classHeader = options.class.header.header;
		}
		if(options.class.header.hasOwnProperty("headerTitle")){
			classHeaderTitle = options.class.header.headerTitle;
		}
		if(options.class.header.hasOwnProperty("headerBtn")){
			classHeaderBtn = options.class.header.headerBtn;
		}
	}
	
	//modal size full screen
	var mainModalFrameCss = "";
	if(options.modalSize != null && options.modalSize == "fs"){
		mainModalFrameCss = modalSize;
	}
	
	//modal fit screen
	if(options.fitScreen){
		modalContentClass = "osl-modal__screen--fit";
	}
	
	$("body").prepend(
		'<div class="modal '+mainModalFrameCss+'" id="'+layerBoxDivId+'" role="dialog" tabIndex="-1" aria-labelledby="'+layerBoxDivId+'" aria-hidden="true" data-backdrop="'+options.backdrop+'" data-keyboard="'+options.keyboard+'" data-closeconfirm="'+options.closeConfirm+'" data-idkeyduple="'+options.idKeyDuple+'" data-idkey="'+options.idKey+'" data-focus="'+options.focus+'" data-draggable="'+options.draggable+'">'
			+'<div class="modal-dialog modal-dialog-centered '+modalSize+'" role="document">'
				+'<div class="modal-content '+modalContentClass+'">'
					+'<div class="modal-header clearfix '+classHeader+'">'
						+'<h5 class="modal-title kt-font-boldest '+classHeaderTitle+'">'+modalTitle+'</h5>'
						+'<button type="button" class="close '+classHeaderBtn+'" data-dismiss="modal" aria-hidden="true"><i class="pg-close fs-14"></i></button>&nbsp;'
					+'</div>'
					+'<div class="modal-body '+options.class.body+'" data-height="200">'
						
					+'</div>'
				+'</div>'
			+'</div>'
		+'</div>'
	);
	
	//draggable 활성화 체크
	if(options.draggable){
		var dragObj = new Draggabilly( '#'+layerBoxDivId+' .modal-dialog', {
			handle: '.modal-header'
		});
		$('#'+layerBoxDivId).data('draggabilly', dragObj);
		
		//modal-header에 css 추가
		$('#'+layerBoxDivId+' .modal-header').addClass("osl-modal__cursor--move");
	}
	
	//로딩 바
	var loadingShowVal = options.showLoading;
	
	//param에 모달 ID 전달
	if($.osl.isNull(data)){
		data = {};
	}
	
	data["modalId"] = layerBoxDivId;
	
	//AJAX 설정
	var ajaxObj = new $.osl.ajaxRequestAction(
			{"url":url,async:true, loadingShow: loadingShowVal}
			,data);
	//AJAX 전송 성공 함수
	ajaxObj.setFnSuccess(function(data, textStatus, xhr){
		$.osl.deferred= $.Deferred();
		
		//모달 창 오픈
		$("#"+layerBoxDivId).modal('show');
		
		//모달 창 내용 넣기
		$("#"+layerBoxDivId+" .modal-body").html(data);

		//모달 footer 이동
		var modalFooter = $("#"+layerBoxDivId+" .modal-body").find(".modal-footer");
		modalFooter.addClass(options.class.footer);
		
		if(modalFooter.length > 0){
			$("#"+layerBoxDivId+" .modal-body").after(modalFooter);
		}else{
			$("#"+layerBoxDivId+" .modal-body").after(
					'<div class="modal-footer'+options.class.footer+'">'
						+'<button type="button" class="btn btn-outline-brand" data-dismiss="modal">'+$.osl.lang("modal.close")+'</button>'
					+'</div>'
			);
		}
		
		//자동 사이즈 맞춤 함수
		var fnAutoHeight = function(){
			var height = parseInt(KTUtil.getViewPort().height);
            return parseInt(height*0.8);
		}
		
		//자동 사이즈 조절 안하는경우
		if(!options.autoHeight){
			fnAutoHeight = $.noop;
		}
		
		//스크롤 적용인경우
		if(options.ftScrollUse){
			//퍼펙트 스크롤 적용
			KTUtil.scrollInit($("#"+layerBoxDivId).find(".modal-body")[0], {
				disableForMobile: true, 
				resetHeightOnDestroy: true, 
				handleWindowResize: true, 
				height: fnAutoHeight
			});
		}
		//input[type=number]에 touchSpin 적용
		var inputNumberList = $("input[type=number]");
		if(!$.osl.isNull(inputNumberList) && inputNumberList.length > 0){
			$.each(inputNumberList, function(idx, map){
				//readonly인경우 적용 안함
				var readonly = $(map).attr("readonly");
				if(!$.osl.isNull(readonly) || (readonly == true || readonly == "readonly")){
					return true;
				}
				//적용 값 가져오기
				var min = $(map).attr("min") || 0;
				var max = $(map).attr("max") || 9999999;
				var step = $(map).attr("step") || 1;
				var boostat = $(map).attr("boostat") || 5;
				var maxboostedstep = $(map).attr("maxboostedstep") || 10;
				
				//정렬 순서
		    	$(map).TouchSpin({
		            buttondown_class: 'btn btn-secondary',
		            buttonup_class: 'btn btn-secondary',
		            min: min,
		            max: max,
		            step: step,
		            boostat: boostat,
		            maxboostedstep: maxboostedstep,
		        });
			});
		}
		
		
		//callback 함수 적용
		if(options.hasOwnProperty("callback")){
			$.each(options.callback, function(idx, map){
				var targetId = map.targetId;
				var actionFn = map.actionFn;
				var targetElem = $("#"+targetId);
				
				if(targetElem.length > 0 && typeof actionFn == "function"){
					targetElem.click(function(){
						actionFn(this);
					});
				}
				
			});
		}
/*
		//modal form에 자동으로 tabindex 넣기
		var modalForm = $("#"+layerBoxDivId+" .modal-body form");
		if(modalForm.length > 0){
			$.each(modalForm, function(formIdx, form){
				var tagList = $(form).find("input[type!=hidden],select,textarea,button");
				var startTabIdx = 1;
				
				//입력 상자 목록
				$.each(tagList, function(idx, map){
					//첫번째 태그 focus
					if(idx == 0){
						$(map).focus();
					}
					$(map).attr("tabindex", startTabIdx);
					startTabIdx++;
					
					console.log(map);
				});
			});
		}
		*/
		//실행 완료 호출
		$.osl.deferred.resolve();
		return $.osl.deferred.promise();
	});
	
	//AJAX 전송 오류 함수
	ajaxObj.setFnError(function(xhr, status, err){
		if(xhr.status == '999'){
    		$.osl.alert($.osl.lang("common.error.sessionInvalid"));
    		document.location.href="/cmm/cmm4000/cmm4000/selectCmm4000View.do"
    		return;
    	}
		if(xhr.status == '404'){
			console.log(err);
			$.osl.alert($.osl.lang("common.error.popup"));
    		$.osl.showLoadingBar(false);
    		
    		//모달 창 즉시 닫기
    		modalCloseFlag = true;
    		$("#"+layerBoxDivId).modal("hide");
    		return;
    	}
		if(xhr.status == '401'){
			$.osl.alert($.osl.lang("common.error.nonAuth"));
			$.osl.showLoadingBar(false);
    		
    		//모달 창 즉시 닫기
    		modalCloseFlag = true;
    		$("#"+layerBoxDivId).modal("hide");
    		return;
    	}
	});
	
	//AJAX 전송
	ajaxObj.send();
	
	
	return layerBoxDivId;
}

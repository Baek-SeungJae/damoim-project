<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Datepicker - Default functionality</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- ===========각종jQuery파일 -->
<!-- jQuery UI CSS파일  -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<!-- jQuery 기본 js파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<!-- jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
 
 

<script>
	$(function() {
		$("#datepicker").datepicker(
				{
					dateFormat : 'yy-mm-dd',
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
						'8월', '9월', '10월', '11월', '12월' ],
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					changeMonth : true, //월변경가능
					changeYear : true, //년변경가능
					showMonthAfterYear : true, //년 뒤에 월 표시
					closeText : '닫기',
					prevText : '이전달',
					nextText : '다음달',
					currentText : '오늘',
					weekHeader : 'Wk',
					firstDay : 0,
					isRTL : false,
					duration : 200,
					/* showAnim : 'Slide down' */
 					//maxDate : dtNow, // 오늘 날자이후 데이터 클릭은 막기위해
					changeMonth: true,
					changeYear: true,
					yearRange: 'c-10:c',
					showMonthAfterYear : true,
					yearSuffix : '년',
					showOtherMonths : true, // 나머지 날짜도 화면에 표시
					//selectOtherMonths : true, // 나머지 날짜에도 선택을 하려면 true
					onChangeMonthYear : function(year, month, inst) {
						// 년 또는 월이 변경시 이벤트 발생
						EvtChangeMonthYear(year, month);
					},
					beforeShow : function(input, inst) {
						// 일자 선택되기전 이벤트 발생
					},
					
					onSelect : function(d) {
						alert(d+" 선택되었습니다");
			            
			            var arr=d.split("-");
			            var year=arr[0];
			            var month=arr[1];
			            var day=arr[2];
			            
			            $("#year").text(year);
			            $("#month").text(month);
			            $("#day").text(day);
			            
			            //요일 가져오기
			            //데이터를 먼저 가져오고 (숫자로 넘어옴)
			            var date=new Date($("#date").datepicker({dateFormat:"yy-mm-dd"}).val());
			            //일요일 0~
			            alert("date:"+date.getDay());
			            
			            week=new Array("일","월","화","수","목","금","토");
			            $("#mydate").text(week[date.getDay()]);
						// 일자 선택된 후 이벤트 발생
					},
				});
		$.datepicker.setDefaults($.datepicker.regional['ko']);
	});
	
	
	
	
</script>


<style type="text/css">
.ui-datepicker {
	font-size: 44px;
	width: 1100px;
	height: 620px;
	z-index: 100;
	margin: 0px;
}
.ui-datepicker select.ui-datepicker-month, .ui-datepicker select.ui-datepicker-year {
    width: 22%;
}
 input[type="date"]::-webkit-calendar-picker-indicator,
 input[type="date"]::-webkit-inner-spin-button {
     display: none;
     appearance: none;
 }
 input[type="date"]::-webkit-calendar-picker-indicator {
   color: rgba(0, 0, 0, 0);
   opacity: 1;
   display: block;
   background: url(https://mywildalberta.ca/images/GFX-MWA-Parks-Reservations.png) no-repeat;
   width: 20px;
   height: 20px;
   border-width: thin;
}
</style>
<script type="text/javascript">
	var dtNow = new Date();
	
	
	$(document).ready(function() {
		// 선택된 값 세팅
		EvtChangeMonthYear(dtNow.getFullYear(), dtNow.getMonth());
	});

	// 월이나 년이 바뀔때의 이벤트
	function EvtChangeMonthYear(Year, Month) {
		$(".ui-datepicker-current-day")
				.attr("style", "background-color:#ff0000;"); // 선택된 날자에 테두리를 만든다.
		var arrSplit = ($("#datepicker").val()).split("-"); // 선택된 날자를 배열로 받음

		var vDt = new Date();
		var Day = getStrDay(vDt.getDate());
		var dtMin = new Date(Year, Month - 1, 1);

		dtMin = new Date(Year, Month - 1, 1 - dtMin.getDay()); // 달력의 최초 날자를 구하기 위해
		var strMin = dtMin.getFullYear() + "-"
				+ getStrMonth(dtMin.getMonth() + 1) + "-"
				+ getStrDay(dtMin.getDate());
		var dtMax = new Date(new Date(Year, Month, 1) - 86400000);

		var dtMax = new Date(Year, Month - 1, dtMax.getDate() + 6
				- dtMax.getDay()); // 달력의 마지막 날자를 구하기 위해
		var strMax = dtMax.getFullYear() + "-"
				+ getStrMonth(dtMax.getMonth() + 1) + "-"
				+ getStrDay(dtMax.getDate());

		//        var strUrl = "/Lab/NDailyCheck/GetDailyMonthsAjx";
		//        var vLabNo = "@LabNo";
		//        var selCheckGubun = $("#CheckGubunVal").val();

		//        $.ajax({
		//            type: 'POST',
		//            async: true,    //비동기
		//            dataType: "json",
		//            url: strUrl,
		//            data: { LabNo: vLabNo, CheckGubun: selCheckGubun, dtMinDay: strMin, dtMaxDay: strMax },
		//            success: function (data) {   // 통신이 성공적으로 이루어졌을 때 이 함수를 타게 된다.
		//                MathMonths(data, strMin);
		//            },
		//            complete: function (data) {   // 통신이 실패했어도 완료가 되었을 때 이 함수를 타게 된다.
		//            },
		//            error: function (xhr, status, error) {
		//                alert("통신에러 → " + xhr.responseText + ":" + error);
		//            }
		//        });
	}

	function getStrMonth(Month) {
		Month = Month + "";
		if (Month.length == 1) {
			Month = "0" + Month;
		}
		return Month;
	}

	function getStrDay(Day) {
		Day = Day + "";
		if (Day.length == 1) {
			Day = "0" + Day;
		}
		return Day;
	}
</script>

</head>
<body>
	<div>
		<div type="date" id="datepicker"></div>
		</br>
		<div>
		 연도<p id="year"></p>
		 월<p id="month"></p>
		 일<p id="day"></p>
		 요일<p id="mydate"></p>
		
		</div>
	</div>
</body>
</html>
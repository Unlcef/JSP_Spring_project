<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="../include/setting.jsp" %>
<c:if test="${sessionScope.memId == null}">
<%@ include file="../include/mainheader.jsp" %>
</c:if>
<c:if test="${sessionScope.memId != null}">
<%@ include file="../include/mainheaderLog.jsp" %>
</c:if>
</head>
<body>
<div id="map" style="width:70%;height:350px; margin: 0 auto;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c7ed43d9094a9e4b99baaeb45d53da28"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(37.478623, 126.878659), // 지도의 중심좌표
        level: 2 // 지도의 확대 레벨
    };

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new daum.maps.LatLng(37.478623, 126.878659); 

// 마커를 생성합니다
var marker = new daum.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
<pre align="center">
대중교통으로 방문하시는 경우
<p style="color:red;">지하철</p>
6번출구 나오셔서 좌측횡단보도 건너 좌측으로 10m 가시면 삼거리가 나옵니다.
삼거리에서 우측 방향으로 직진하셔서 사거리 대각선방향에 우리은행 건물 
410호입니다.

<p style="color:red;">버스</p>
21, 571, 652, 금천 05[디지털3단지월드벤쳐센터] 정류장에서 하차

자가용으로 방문하시는 경우
서부간선도로를 타고 오다가 광명교를 타고 좌회전 후 첫 사거리에서 우회전
가리봉5거리에서 철산방향 수출의 다리를 넘어 첫 사거리(한진사거리)에서 우회전
남부순황도로 구로IC로 나와 좌회전
</pre>
</body>
<%@ include file="../include/footer.jsp" %>
</html>
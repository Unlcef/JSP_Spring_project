<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" type="text/css" href="board_type1.css" />
   <script src="../js/jquery-3.3.1.min.js"></script>
<script>
	$(function(){
		$(window).resize(function(){
			var browser_size = window.outerWidth;
			if (browser_size <= 760) {
				var width = browser_size/100*90;
				$(".board_list_type1 tbody tr td:nth-child(3)").css("width", width).css("text-overflow","ellipsis").css("overflow","hidden").css("white-space","nowrap");
			}	
		}).resize();
	});
	
</script>
<style type="text/css">
.margin{height:100px;width:100%;}
.button_margin{height:20px;width:100%;}
.board_type1_wrap{max-width:1200px;width:100%;margin:auto;background:white;}
/*목록*/

.board_list_type1{width:100%;table-layout:fixed;}
.board_list_type1 thead tr{font-size:20px;color:white;background:black;height:60px;}
.board_list_type1 tbody tr{border-bottom:1px solid #e4e4e4;font-size:16px;height:50px;}
.board_list_type1 tbody tr .left{text-align:left;padding-left:10px;padding-right:10px;}
/* 각칸마다 비율*/
.board_list_type1 thead tr th:nth-child(1){width:5%}
.board_list_type1 thead tr th:nth-child(2){width:8%}
.board_list_type1 thead tr th:nth-child(3){width:60%;}
.board_list_type1 thead tr th:nth-child(4){width:10%}
.board_list_type1 thead tr th:nth-child(5){width:12%}

.board_list_type1 tbody tr td:nth-child(1){width:5%}
.board_list_type1 tbody tr td:nth-child(2){width:8%}
.board_list_type1 tbody tr td:nth-child(3){width:60%;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;}
.board_list_type1 tbody tr td:nth-child(4){width:10%}
.board_list_type1 tbody tr td:nth-child(5){width:12%}
@media only screen and (max-width:760px){
	.active_type{display:none;}
	.board_list_type1 thead tr th:nth-child(1){width:10%}
	.board_list_type1 thead tr th:nth-child(2){width:0%}
	.board_list_type1 thead tr th:nth-child(3){width:90%;}
	.board_list_type1 thead tr th:nth-child(4){width:0%}
	.board_list_type1 thead tr th:nth-child(5){width:0%}
	
	.board_list_type1 tbody tr td:nth-child(1){width:10%}
	.board_list_type1 tbody tr td:nth-child(2){width:0%}
	.board_list_type1 tbody tr td:nth-child(3){width:90%;}
	.board_list_type1 tbody tr td:nth-child(4){width:0%}
	.board_list_type1 tbody tr td:nth-child(5){width:0%}
}
/*글쓰기*/

.board_type1_write_wrap{width:90%;margin:auto;background:white;}
.board_type1_write_button_wrap{width:90%;margin:auto;background:white;font-size:16px;padding-left: 10px;padding-right: 10px;}
.board_write_type1{width:100%;table-layout:fixed;font-size:16px;color:black;}
.board_write_type1 tbody tr td{height:100px;}
.board_write_type1 tbody tr td .split_three{padding:0;margin:0;width:100%;list-style:none;}
.board_write_type1 tbody tr td .split_three li{width:33.333%;padding:0;margin:0;float:left;padding-right:5%;}
.board_write_type1 tbody tr td div{padding-top:5px;padding-bottom:5px;}
.board_write_type1 tbody tr .column_name{font-weight:800;}
.board_write_type1 tbody tr .column_desc{}
.board_write_type1 tbody tr .left{text-align:left;padding-left:10px;padding-right:10px;}
.text_type1{width:100%;height:35px;border-radius:5px;padding-left:10px;padding-right:10px;}
.text_type2{width:90%;height:35px;border-radius:5px;padding-left:10px;padding-right:10px;}
.checkwrap_type1{margin-right:20px;float:left;}
.check_type1{border-radius:5px;margin-right:10px;}
.textarea_type1{width:100%;height:350px;border-radius:5px;}
.write_button_right{float:right;}
.write_button_left{float:left;}
.button_type1{background:blue;color:white;border:none;padding:10px;border-radius:5px;}
.button_type2{background:red;color:white;border:none;padding:10px;border-radius:5px;}
@media only screen and (max-width:760px){
	.board_write_type1 tbody tr td .split_three li{width:100%;float:none;padding-right:0%;}
	
}
</style>
<div class="content" data-content="content-2">
	<h2>반응형 게시판 UI</h2>
	<div class="board_type1_wrap">
		<table class="board_list_type1">
			
			<thead>
				<tr>
					<th><input type="checkbox" /></th>
					<th class="active_type">번호</th>
					<th>제목</th>
					<th class="active_type">작성자</th>
					<th class="active_type">작성날짜</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="checkbox" /></td>
					<td class="active_type">1</td>
					<td class="left">게시물1번입니다.</td>
					<td class="active_type">관리자</td>
					<td class="active_type">2017-12-19</td>
				</tr>
				<tr>
					<td><input type="checkbox" /></td>
					<td class="active_type">1</td>
					<td class="left">게시물1번입니다.게시물1번입니다.게시물1번입니다.게시물1번입니다.게시물1번입니다.</td>
					<td class="active_type">관리자</td>
					<td class="active_type">2017-12-19</td>
				</tr>
				<tr>
					<td><input type="checkbox" /></td>
					<td class="active_type">1</td>
					<td class="left">게시물1번입니다.</td>
					<td class="active_type">관리자</td>
					<td class="active_type">2017-12-19</td>
				</tr>
				<tr>
					<td><input type="checkbox" /></td>
					<td class="active_type">1</td>
					<td class="left">게시물1번입니다.</td>
					<td class="active_type">관리자</td>
					<td class="active_type">2017-12-19</td>
				</tr>
				<tr>
					<td><input type="checkbox" /></td>
					<td class="active_type">1</td>
					<td class="left">게시물1번입니다.</td>
					<td class="active_type">관리자</td>
					<td class="active_type">2017-12-19</td>
				</tr>
				<tr>
					<td><input type="checkbox" /></td>
					<td class="active_type">1</td>
					<td class="left">게시물1번입니다.</td>
					<td class="active_type">관리자</td>
					<td class="active_type">2017-12-19</td>
				</tr>
				<tr>
					<td><input type="checkbox" /></td>
					<td class="active_type">1</td>
					<td class="left">게시물1번입니다.</td>
					<td class="active_type">관리자</td>
					<td class="active_type">2017-12-19</td>
				</tr>
				<tr>
					<td><input type="checkbox" /></td>
					<td class="active_type">1</td>
					<td class="left">게시물1번입니다.</td>
					<td class="active_type">관리자</td>
					<td class="active_type">2017-12-19</td>
				</tr>
				<tr>
					<td><input type="checkbox" /></td>
					<td class="active_type">1</td>
					<td class="left">게시물1번입니다.</td>
					<td class="active_type">관리자</td>
					<td class="active_type">2017-12-19</td>
				</tr>
				<tr>
					<td><input type="checkbox" /></td>
					<td class="active_type">1</td>
					<td class="left">게시물1번입니다.</td>
					<td class="active_type">관리자</td>
					<td class="active_type">2017-12-19</td>
				</tr>
				<tr>
					<td><input type="checkbox" /></td>
					<td class="active_type">1</td>
					<td class="left">게시물1번입니다.</td>
					<td class="active_type">관리자</td>
					<td class="active_type">2017-12-19</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="margin"></div>
	<div class="board_type1_wrap">
		<div class="board_type1_write_wrap">
			<h5>글쓰기</h5>
			<table class="board_write_type1">
				<tr>
					<td class="left" >
						<div class="column_name">글제목</div>
						<div class="column_desc"><input type="text" name="" class="text_type1"/></div>
					</td>
				</tr>
				<tr>
					<td class="left">
						<ul class="split_three">
							<li>
								<div class="column_name">작성자</div>
								<div class="column_desc"><input type="text" name="" class="text_type1"/></div>
							</li>
							<li>
								<div class="column_name">비밀번호</div>
								<div class="column_desc"><input type="text" name="" class="text_type1"/></div>
							</li>
							<li>
								<div class="column_name">옵션</div>
								<div class="column_desc">
									<div class="checkwrap_type1">
										<input type="checkbox" id="main_exposure" value="main" class="check_type1" /><label for="main_exposure">메인노출</label>
									</div>
									<div class="checkwrap_type1">
										<input type="checkbox" id="notice" value="notice" class="check_type1" /><label for="notice">공지여부</label>
									</div>
								</div>
							</li>	
						</ul>
					</td>
				</tr>
				<tr>
					<td class="left" >
						<div class="column_name">내용</div>
						<div class="column_desc">
							<textarea rows="" cols="" class="textarea_type1"></textarea>
						</div>
					</td>
				</tr>	
			</table>
		</div>
		<div class="button_margin"></div>
		<div class="board_type1_write_button_wrap">
			<div class="write_button_right">
				<button type="button" class="button button_type1">작성완료</button>
			</div>
			<div class="write_button_left">
				<button type="button" class="button button_type2">취소</button>
			</div>
		</div>
	</div>
	<div class="margin"></div>
</div>

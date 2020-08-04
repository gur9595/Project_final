<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>포메이션 작성</title>

<!-- 전술판 전용 -->
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="http://static.footballuser.com/javascripts/jquery.json-2.3.min.js"></script>
<script type="text/javascript" src="./../resources/js/formation.js"></script>
<link rel="stylesheet" type="text/css"
	href="./../resources/css/framework.css">
<script type="text/javascript"
	src="http://static.footballuser.com/javascripts/jquery.ui.touch-punch-1.7.2.js"></script>
<script type="text/javascript"
	src="http://static.footballuser.com/javascripts/chosen.jquery.min.js"></script>
<body>

	<script type="text/javascript">
				var config = {
					'.edit_field' : {}
				}
				for ( var selector in config) {
					$(selector).chosen(config[selector]);
				}
			</script>

	<div id="field" class="one_half first">
		<table
			style="height: 613px; width: 416px; background: url(http://static.footballuser.com/images/field.jpg); background-size: 100% 100%; background-repeat: no-repeat;">
			<tr>
				<td class="pos" id="pos0"><input type="hidden" id="pos0"
					value=""></td>
				<td class="pos" id="pos1"><input type="hidden" id="pos1"
					value=""></td>
				<td class="pos" id="pos2"><input type="hidden" id="pos2"
					value=""></td>
				<td class="pos" id="pos3"><input type="hidden" id="pos3"
					value=""></td>
				<td class="pos" id="pos4"><input type="hidden" id="pos4"
					value=""></td>
			</tr>
			<tr>
				<td class="pos" id="pos5"><input type="hidden" id="pos5"
					value=""></td>
				<td class="pos" id="pos6"><input type="hidden" id="pos6"
					value=""></td>
				<td class="pos" id="pos7"><input type="hidden" id="pos7"
					value=""></td>
				<td class="pos" id="pos8"><input type="hidden" id="pos8"
					value=""></td>
				<td class="pos" id="pos9"><input type="hidden" id="pos9"
					value=""></td>
			</tr>
			<tr>
				<td class="pos" id="pos10"><input type="hidden" id="pos10"
					value=""></td>
				<td class="pos" id="pos11"><input type="hidden" id="pos11"
					value=""></td>
				<td class="pos" id="pos12"><input type="hidden" id="pos12"
					value=""></td>
				<td class="pos" id="pos13"><input type="hidden" id="pos13"
					value=""></td>
				<td class="pos" id="pos14"><input type="hidden" id="pos14"
					value=""></td>
			</tr>
			<tr>
				<td class="pos" id="pos15"><input type="hidden" id="pos15"
					value=""></td>
				<td class="pos" id="pos16"><input type="hidden" id="pos16"
					value=""></td>
				<td class="pos" id="pos17"><input type="hidden" id="pos17"
					value=""></td>
				<td class="pos" id="pos18"><input type="hidden" id="pos18"
					value=""></td>
				<td class="pos" id="pos19"><input type="hidden" id="pos19"
					value=""></td>
			</tr>
			<tr>
				<td class="pos" id="pos20"><input type="hidden" id="pos20"
					value=""></td>
				<td class="pos" id="pos21"><input type="hidden" id="pos21"
					value=""></td>
				<td class="pos" id="pos22"><input type="hidden" id="pos22"
					value=""></td>
				<td class="pos" id="pos23"><input type="hidden" id="pos23"
					value=""></td>
				<td class="pos" id="pos24"><input type="hidden" id="pos24"
					value=""></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td class="pos" id="pos25"><input type="hidden" id="pos25"
					value=""></td>
				<td></td>
				<td></td>
			</tr>
		</table>
		<!-- <img id="field_image" height="613" width="416" src="http://static.footballuser.com/images/field.jpg" alt="" /> -->
	</div>

	<div class="one_half" style="display: inline;">
		<div class="">
			00000000000000000000000000000000000000000
		<br class="clear" />

		<div class="">
			<h3>
				...but first add your players to the list: <em class="grey small">(press
					enter)</em>
			</h3>
			<div class="">
				<input id="playername" type="text" value="" size="30"
					name="playername" /> <input id="playerid" type="text" value=""
					size="30" name="playerid" /> <input
					style="margin-left: 20px; height: 33px" class="button" value="add"
					type="submit" id="addplayer" />
			</div>
			<div id="player_list" class="player_list">
				<table id="player_table" cellspacing="0" cellpadding="0" border="0"
					width="378">
					<tbody>
						<tr>
							<td height="22" align="left" class="player_header"><strong>Name</strong>
							</td>
							<td height="22" align="right" class="player_header"><a
								href="#" class="delete_players no_underline"><strong>
										« Remove all</strong></a></td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="">
				<p>
					<input class="button" type="submit" value="save" id="submit"
						name="submit" />
				</p>
			</div>
		</div>

	</div>


	<br class="clear" />



</body>
<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'UA-15165482-2' ]);
	_gaq.push([ '_trackPageview' ]);
	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		(document.getElementsByTagName('head')[0] || document
				.getElementsByTagName('body')[0]).appendChild(ga);
	})();
</script>
<script type="text/javascript">
	var config = {
		'.edit_field' : {}
	}
	for ( var selector in config) {
		$(selector).chosen(config[selector]);
	}
</script>
</html>
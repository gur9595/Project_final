<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
<link rel="stylesheet" href="css/custom.css">
<script>
</script>
<body>
	<div class="card">
		<div class="card-body">
			<h4 class="card-title">채팅</h4>
			<div>
				<input type="hid-den" id="chat_id" value="${param.chat_id }"
					style="border: 1px dotted red;" />
				<div id="chat-container" style="height: 500px; overflow: auto;">
				</div>
			</div>
		</div>
		<div class="card-body border-top">
			<div class="row">
				<div class="col-9">
					<div class="input-field m-t-0 m-b-0">
						<textarea id="inputMessage" placeholder="Type and enter"
							onkeyup="enterkey();" class="form-control border-0"></textarea>
					</div>
				</div>
				<button type="button" onclick="sendMessage();">보내기</button>
			</div>
		</div>
	</div>
</body>
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.17.2/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.17.2/firebase-analytics.js"></script>

<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyCjGbcNvs8-vw5p4Kw5viYu4sSDQI2bX6s",
    authDomain: "b-pro-e77db.firebaseapp.com",
    databaseURL: "https://b-pro-e77db.firebaseio.com",
    projectId: "b-pro-e77db",
    storageBucket: "b-pro-e77db.appspot.com",
    messagingSenderId: "843310314615",
    appId: "1:843310314615:web:8a2b8df3e2f52adc588272",
    measurementId: "G-TTNC0WF4FJ"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
  
</script>
</html>
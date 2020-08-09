importScripts('https://www.gstatic.com/firebasejs/4.8.1/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/4.8.1/firebase-messaging.js');
 
// Initialize Firebase
var config = {
	apiKey: "AIzaSyCjGbcNvs8-vw5p4Kw5viYu4sSDQI2bX6s",
	authDomain: "b-pro-e77db.firebaseapp.com",
	databaseURL: "https://b-pro-e77db.firebaseio.com",
	projectId: "b-pro-e77db",
	storageBucket: "b-pro-e77db.appspot.com",
	messagingSenderId: "843310314615"
};
firebase.initializeApp(config);
 
const messaging = firebase.messaging();
messaging.onMessage(function(payload){
    console.log('onMessage: ', payload);
    var title = "고라니 서비스";
    var options = {
            body: payload.notification.body
    };
    
    var notification = new Notification(title, options);
});
messaging.setBackgroundMessageHandler(function(payload){
	 
    const title = "고라니 서비스";
    const options = {
            body: payload.notification.body,
            icon: payload.notification.icon
    };     
    
    return self.registration.showNotification(title,options);
});

package firebase;

import java.util.ArrayList;
import java.util.concurrent.CompletableFuture;

import org.springframework.http.HttpEntity;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

/*
Google FCM 서버에 데이터 전송 하는 클래스 
*/
@Service
public class AndroidPushNotificationsService {
	
	private static final String FIREBASE_SERVER_KEY = "AAAAuJ6gZXM:APA91bEFTJXfG2-UBw3pCBiRhpC2YCzgV20bSyyQyMLFhCi2THWLMbM3BxT37u8rQzSidIVg_7yCw-3SKQhz7hSay5hpQ6VY1ZqMtOWwUk9DEfgG1qIrKRlVsCvw9QLRePgA2QJ-naVp";
	private static final String FIREBASE_API_URL = "https://fcm.googleapis.com/fcm/send";
	
	@Async
	public static CompletableFuture<String> send(HttpEntity<String> entity){
		
		RestTemplate restTemplate = new RestTemplate();
		
		ArrayList<ClientHttpRequestInterceptor> interceptors = new ArrayList<>();
		
		interceptors.add(new HeaderRequestInterceptor("Authorization", "key=" + FIREBASE_SERVER_KEY));
		interceptors.add(new HeaderRequestInterceptor("Content-Type", "application/json;"));
		restTemplate.setInterceptors(interceptors);
		
		String firebaseResponse = restTemplate.postForObject(FIREBASE_API_URL, entity, String.class);
		
		return CompletableFuture.completedFuture(firebaseResponse);		
	}
	
}

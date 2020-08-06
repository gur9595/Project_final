package mybatis;

import org.springframework.stereotype.Service;

@Service
public interface EventDAOImpl {
	
	public void upload(EventDTO eventDTO);
}

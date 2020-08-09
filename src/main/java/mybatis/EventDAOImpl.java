package mybatis;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface EventDAOImpl {
	
	public void upload(EventDTO eventDTO);
	public ArrayList<EventDTO> eventList();
	public EventDTO eventView(int e_idx);
	public int getTotalCount(EventDTO eventDTO);
}

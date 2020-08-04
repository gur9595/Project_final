package mybatis;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface BoardDAOImpl {
	
	public int boardRequest(BoardDTO boardDTO);
	
	public BoardDTO view(ParameterDTO parameterDTO);
	
	public ArrayList<MemberDTO>boardinpdate(MemberDTO memberDTO);
	
	public ArrayList<BoardDTO> listPage(ParameterDTO parameterDTO);
	
	public int listPageCount(ParameterDTO parameterDTO);
	
	public int boardUpdate(String m_id);
	
	public int delete(String m_idx,String m_id);
	
	public int write(String m_id);
	
	public int boardEdit(String m_id);

}

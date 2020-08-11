package mybatis;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface BoardDAOImpl {
	
	public int boardRequest(BoardDTO boardDTO);
	
	public BoardDTO qnaView(int b_idx);	
	
	public ArrayList<MemberDTO>boardinpdate(MemberDTO memberDTO);
	
	public ArrayList<BoardDTO> qnaList(ParameterDTO parameterDTO);
	
	public int listPageCount(ParameterDTO parameterDTO);
	
	public ArrayList<BoardDTO> noticeList(ParameterDTO parameterDTO);
	
	public int qnaWriteAction(BoardDTO boardDTO);
	
	public BoardDTO qnaEdit(ParameterDTO parameterDTO);
	
	public int qnaEditAction(BoardDTO boardDTO);

	public int qnaDelete(BoardDTO boardDTO);
}

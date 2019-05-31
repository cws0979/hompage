package bbs;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class BbsTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		BbsDAO dao = new BbsDAO();

		//list(dao);
		//passCheck(dao);
		//create(dao);
		//update(dao);
		delete(dao);
	}

	private static void delete(BbsDAO dao) {
		// TODO Auto-generated method stub
		if(dao.delete(1))
			p("성공");
		else
			p("실패");
	}

	private static void update(BbsDAO dao) {
		BbsDTO dto =dao.read(1);
		dto.setWname("변경자");
		dto.setTitle("제목변경");
		dto.setContent("내용변경");
		// TODO Auto-generated method stub
		if(dao.update(dto )) {
			p("성공");
			
		}else
			p("실패");
		
	}

	private static void create(BbsDAO dao) {
		// TODO Auto-generated method stub
		BbsDTO dto = new BbsDTO();
		dto.setWname("아로미");
		dto.setTitle("게시판 실습");
		dto.setContent("게시판의 답변을 배웁시다.");
		dto.setPasswd("1234");
		if(dao.create(dto)) {
			p("성공");
			
		}else
			p("실패");
		
	}

	private static void p(String string) {
		// TODO Auto-generated method stub
		System.out.println(string);
	}

	private static void passCheck(BbsDAO dao) {
		// TODO Auto-generated method stub
		
		Map map = new HashMap();
		
		map.put("bbsno", 1);
		map.put("passwd","1234" );
		
		if(dao.passCheck(map )) {
			p("올바른 패스워드 입니다.");
		}else
			p("잘못된 패스워드입니다.");
		
	}

	private static void list(BbsDAO dao) {
		// TODO Auto-generated method stub
		Map map = new HashMap();
		List<BbsDTO> list = dao.list(map);
		Iterator<BbsDTO> iter = list.iterator();
		
		while(iter.hasNext()) {
			BbsDTO dto = iter.next();
			p(dto);
			p("=====================");
		}
		
	}

	private static void p(BbsDTO dto) {
		// TODO Auto-generated method stub
		p("번호: "+ dto.getBbsno());
		p("이름: "+ dto.getWname());
		p("제목: "+ dto.getTitle());
		p("내용: "+ dto.getContent());
		p("등록 날짜: "+ dto.getWdate());
		p("grpno: "+ dto.getGrpno());
		p("indent: "+ dto.getIndent());
		p("ansnum: "+ dto.getAnsnum());
		
	}

}

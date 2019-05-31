package guestbook;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class GuestTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		GuestDAO dao = new GuestDAO();
		
		passwdCheck(dao);
		
		
		//create(dao);
		//read(dao);
		//update(dao);
		//delete(dao);
		//list(dao);
	}

	private static void passwdCheck(GuestDAO dao) {
		// TODO Auto-generated method stub
		Map map = new HashMap();
		map.put("no", 1);
		map.put("password", "12345");
		
		if(dao.passwdCheck(map)) {
			p("올바른 패스워드 입니다.");
		}else 
			p("잘못된 패스워드 입니다.");
	}

	private static void list(GuestDAO dao) {
		Map map = new HashMap();
		// TODO Auto-generated method stub
		List<GuestDTO> list = dao.list(map);
		Iterator<GuestDTO> iter = list.iterator();
		
		while(iter.hasNext()) {
			GuestDTO dto = iter.next();
			p(dto);
			p("=====================");
		}
		
	}

	private static void delete(GuestDAO dao) {
		// TODO Auto-generated method stub
		if(dao.delete(4))
			p("성공");
		else
			p("실패");
	}

	private static void update(GuestDAO dao) {
		// TODO Auto-generated method stub
		GuestDTO dto = dao.read(2);
		dto.setTitle("방명록");
		dto.setContent("공지사항입니다");
		dto.setRegdate("2019-03-07");
		dto.setPassword("1234");
		dto.setPartstr("질문");
		
		if(dao.update(dto))
			p("성공");
		else
			p("실패");
	}

	private static void read(GuestDAO dao) {
		// TODO Auto-generated method stub
		GuestDTO dto = dao.read(1);
		p(dto);
	}

	private static void p(GuestDTO dto) {
		// TODO Auto-generated method stub
		p("번호: "+dto.getNo());
		p("이름: "+dto.getName());
		p("성별: "+dto.getGender());
		p("제목: "+dto.getTitle());
		p("내용: "+dto.getContent());
		p("날짜: "+dto.getRegdate());
		p("비밀번호: "+dto.getPassword());
		p("분야: "+dto.getPartstr());
		
	}

	private static void create(GuestDAO dao) {
		// TODO Auto-generated method stub
		GuestDTO dto = new GuestDTO();
		dto.setName("조은서");
		dto.setGender("여자");
		dto.setTitle("하이");
		dto.setContent("방명록입니다.");
		dto.setRegdate("2019-03-06");
		dto.setPassword("1234");
		dto.setPartstr("공지");
		
		if(dao.create(dto))
			p("성공");
		else
			p("실패");
	}

	private static void p(String string) {
		// TODO Auto-generated method stub
		System.out.println(string);
	}

}

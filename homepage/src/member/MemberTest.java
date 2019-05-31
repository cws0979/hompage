package member;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class MemberTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MemberDAO dao = new MemberDAO();
		
		create(dao);
		list(dao);
		//read(dao);
		//update(dao);
		//delete(dao);
		//total(dao);
		

	}

	private static void total(MemberDAO dao) {
		// TODO Auto-generated method stub
		Map map = new HashMap();
		map.put("col", "mname");
		map.put("word", "김");
		p("전체 레코드 갯수: "+dao.total(map));
	}

	private static void list(MemberDAO dao) {
		Map map = new HashMap();
		map.put("col", "mname");
		map.put("word", " ");
		map.put("sno", 1);
		map.put("eno", 5);
		
		// TODO Auto-generated method stub
		List<MemberDTO> list = dao.list(map);
		Iterator<MemberDTO> iter = list.iterator();
		
		while(iter.hasNext()) {
			MemberDTO dto = iter.next();
			p(dto);
			p("===========================");
		}
	}

	private static void p(MemberDTO dto) {
		// TODO Auto-generated method stub
		p("아이디:"+dto.getId());
		p("이름:"+dto.getMname());
		p("이메일:"+dto.getEmail());
		p("전화번호:"+dto.getTel());
		p("직업:"+dto.getJob());
		p("우편번호:"+dto.getZipcode());
		p("주소:"+dto.getAddress1());
		p("상세주소:"+dto.getAddress2());
		p("사진:"+dto.getFname());
		
		
	}

	private static void create(MemberDAO dao) {
		// TODO Auto-generated method stub
		MemberDTO dto = new MemberDTO();
		dto.setId("user77");
		dto.setEmail("user5@mail.com");
		dto.setMname("한길동");
		dto.setTel("010-0000-2222");
		dto.setJob("A03");
		dto.setPasswd("1111");
		dto.setZipcode("45678");
		dto.setAddress1("서울시 종로구");
		dto.setAddress2("코아빌딩");
		dto.setFname("member.jpg");
		if(dao.create(dto)) {
			p("성공");
		}else
			p("실패");
			
	}

	private static void p(String string) {
		// TODO Auto-generated method stub
		System.out.println(string);
	}

}

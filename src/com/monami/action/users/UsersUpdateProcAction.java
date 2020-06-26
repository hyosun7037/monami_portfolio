package com.monami.action.users;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.monami.action.Action;
import com.monami.model.Users;
import com.monami.repository.UsersRepository;
import com.monami.util.SHA256;
import com.monami.util.Script;

public class UsersUpdateProcAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 0번 인증 확인
				HttpSession session = request.getSession();
				if (session.getAttribute("principal") == null) {
					Script.getMessage("잘못된 접근입니다.", response);
					return; // 여기서 return이 었으면 코드를 아래를 타고 내려간다.
				}
				
				// 유효성 확인
//				if
//				(
//						request.getParameter("id") == null ||
//						request.getParameter("id").equals("") ||
//						request.getParameter("password") == null ||
//						request.getParameter("password").equals("") ||
//						request.getParameter("email") == null ||
//						request.getParameter("email").equals("") ||
//						request.getParameter("address") == null ||
//						request.getParameter("address").equals("")		
//				) {
//					Script.back("입력되지 않은 필드가 있습니다.", response);
//					return;
//				}
//				
				
				int id = Integer.parseInt(request.getParameter("id"));
				String rawPassword = request.getParameter("password");
				String password = SHA256.encodeSha256(rawPassword);
				int phonenumber = Integer.parseInt(request.getParameter("phonenumber"));
				String email = request.getParameter("email");
				String address = request.getParameter("address");

				Users user = Users.builder()
						.id(id)
						.password(password)
						.phonenumber(phonenumber)
						.email(email)
						.address(address)
						.build();
				UsersRepository usersRepository = UsersRepository.getInstance();
				int result = usersRepository.update(user);

				// update가 성공적으로 이루어지면 세션이 재등록한다.
				if(result == 1) {
					Users principal = usersRepository.findById(id);
					System.out.println("UsersUpdateProc : username : "+principal.getUsername());
					session.setAttribute("principal", principal);

					Script.href("회원수정 성공", "/monami/about.jsp", response);
				}else {
					Script.back("회원수정 실패", response);
				}

	}
}

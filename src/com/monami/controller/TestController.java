package com.monami.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monami.action.Action;
import com.monami.action.board.AboutHomeAction;
import com.monami.action.board.BoardHomeAction;
import com.monami.action.board.ClassHomeAction;
import com.monami.action.board.MapHomeAction;
import com.monami.action.board.ProductHomeAction;
import com.monami.action.test.JsoupTestAction;

// http://localhost:8000/blog/board
@WebServlet("/test")
public class TestController extends HttpServlet {
	private final static String TAG = "BoardController  : ";
	private static final long serialVersionUID = 1L;

	public TestController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// http://localhost:8000/blog/user?cmd=join
		String cmd = request.getParameter("cmd");
		System.out.println(TAG + "router : " + cmd);
		Action action = router(cmd);
		action.execute(request, response);
	}

	// Controller에서 파일이 생성되고, 라우터를 타면 return 값으로 객체를 생성시켜주고, action이라는 변수에 넣어주고
	// execute로 실행
	public Action router(String cmd) {
		if (cmd.equals("test")) {
			// 회원가입 페이지로 이동
			return new JsoupTestAction();
		}
		return null;
	}
}
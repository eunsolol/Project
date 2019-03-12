package com.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request
			, HttpServletResponse response, Object arg2) throws Exception {

		HttpSession session = request.getSession();
		Boolean login = false;
		if (session != null && session.getAttribute("login") != null) {
			login = true;
		}
		if (login) {
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.write("<!DOCTYPE html>\r\n");
			out.write("<html lang=\"en\">\r\n");
			out.write("<head>\r\n");
			out.write("\t<meta charset=\"utf-8\" />\r\n");
			out.write("\t<link rel=\"apple-touch-icon\" sizes=\"76x76\" href=\"");
			out.write(request.getContextPath());
			out.write("/resources/img/logo.png\">\r\n");
			out.write("\t<link rel=\"icon\" type=\"image/png\" href=\"");
			out.write(request.getContextPath());
			out.write("/resources/img/logo.png\">\r\n");
			out.write("\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\" />\r\n");
			out.write("\t<title>성적처리시스템</title>\r\n");
			out.write("\t<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />\r\n");
			out.write("\t<link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,700,200\" rel=\"stylesheet\" />\r\n");
			out.write("\t<link href=\"https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css\" rel=\"stylesheet\">\r\n");
			out.write("</head>\r\n");
			out.write("<body>\r\n");
			out.write("\t<div class=\"container\" style=\"text-align:center;padding-top:100px;\">\r\n");
			out.write("\t<img src=\"");
			out.write(request.getContextPath());
			out.write("/resources/img/access_denied.png\">\r\n");
			out.write("\t</div>\r\n");
			out.write("</body>\r\n");
			out.write("</html>");
		}
		return login;
	}

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}

}

package com.kb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AddNumbers extends GenericServlet {

	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		long number1=Long.parseLong(request.getParameter("first"));
		long number2=Long.parseLong(request.getParameter("second"));
		
		PrintWriter out = response.getWriter();
		out.println("number1 + number2 = " + number1 + number2);
		
	}

}

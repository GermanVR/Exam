package com.examen.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.rmi.server.Dispatcher;

/**
 * Servlet implementation class examenController
 */
@WebServlet("/examenController")
public class examenController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public examenController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nombre = request.getParameter("nombre");
		int edad = Integer.parseInt(request.getParameter("edad"));
		String sexo = request.getParameter("sexo");
		String tipoP = request.getParameter("tipoP");
		System.out.println(Integer.parseInt(request.getParameter("tab_ini")));
		System.out.println(Integer.parseInt(request.getParameter("tab_fin")));
		int tab_ini = Integer.parseInt(request.getParameter("tab_ini"));
		int tab_fin = Integer.parseInt(request.getParameter("tab_fin"));

		request.setAttribute("nombre", nombre);
		request.setAttribute("edad", edad);
		request.setAttribute("sexo", sexo);
		request.setAttribute("tipoP", tipoP);
		request.setAttribute("tab_ini", tab_ini);
		request.setAttribute("tab_fin", tab_fin);
		
		
		request.getRequestDispatcher("respuesta.jsp").forward(request, response);
	}

}

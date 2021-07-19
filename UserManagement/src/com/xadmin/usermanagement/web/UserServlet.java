package com.xadmin.usermanagement.web;
import java.io.IOException;

import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xadmin.usermanagement.dao.USerDAO;
import com.xadmin.usermanagement.model.Atendimento;
import com.xadmin.usermanagement.model.User;

@WebServlet("/")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private USerDAO userDAO;
	
	public void init() {
		userDAO = new USerDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertUser(request, response);
			case "/edit":
				showEditForm(request, response);
				break;
			case "/update":
				updateUser(request, response);
				break;
			case  "/insertAtendiento" :
				inserirAtendimento(request,response);
				break;
			case  "/atender" :
				Atendimento(request,response);
			default:
				listUser(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void Atendimento(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		User existingUser = userDAO.selectUser(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("atender-form.jsp");
		request.setAttribute("user", existingUser);
		dispatcher.forward(request, response);
	}

	private void inserirAtendimento(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		
	    int id_user =  Integer.parseInt(request.getParameter("id"));
	    String defensor = request.getParameter("defensor");
	    String resumo = request.getParameter("resumo");
	    
	    Atendimento ate = new Atendimento(id_user, defensor, resumo);
	    userDAO.insertAtendimento(ate);
	    
		
	}
	
	

	private void listUser(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<User> listUser = userDAO.selectAllUsers();
		request.setAttribute("listUser", listUser);
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		User existingUser = userDAO.selectUser(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
		request.setAttribute("user", existingUser);
		dispatcher.forward(request, response);

	}

	private void insertUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String nascimento = request.getParameter("nascimento");
		String mae = request.getParameter("mae");
		String pai = request.getParameter("pai");
		String genero = request.getParameter("genero");
		String telefone = request.getParameter("telefone");
		String celular = request.getParameter("celular");
		String email = request.getParameter("email");
		String escolaridade = request.getParameter("escolaridade");
		String civil = request.getParameter("civil");
		String cep = request.getParameter("cep");
		String lagradouro = request.getParameter("lagradouro");
		String numero = request.getParameter("numero");
		String complemento = request.getParameter("complemento");
		String bairro = request.getParameter("bairro");
		String uf = request.getParameter("uf");
		String membros = request.getParameter("membros");
		String ativos = request.getParameter("ativos");
		String individual = request.getParameter("individual");
		String familiar = request.getParameter("familiar");
		String tipo = request.getParameter("tipo");
		
		
		
		User newUser = new User(nome, cpf, nascimento, mae, pai, genero, telefone, celular, email, escolaridade, civil, cep,lagradouro,numero,complemento,bairro,uf,membros,ativos,individual,familiar,tipo);
		userDAO.insertUser(newUser);
		response.sendRedirect("list");
	}

	private void updateUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String nascimento = request.getParameter("nascimento");
		String mae = request.getParameter("mae");
		String pai = request.getParameter("pai");
		String genero = request.getParameter("genero");
		String telefone = request.getParameter("telefone");
		String celular = request.getParameter("celular");
		String email = request.getParameter("email");
		String escolaridade = request.getParameter("escolaridade");
		String civil = request.getParameter("civil");
		String cep = request.getParameter("cep");
		String lagradouro = request.getParameter("lagradouro");
		String numero = request.getParameter("numero");
		String complemento = request.getParameter("complemento");
		String bairro = request.getParameter("bairro");
		String uf = request.getParameter("uf");
		String membros = request.getParameter("membros");
		String ativos = request.getParameter("ativos");
		String individual = request.getParameter("individual");
		String familiar = request.getParameter("familiar");
		String tipo = request.getParameter("tipo");
		User book = new User(id, nome, cpf, nascimento, mae, pai, genero, telefone, celular, email, escolaridade, civil, cep,lagradouro,numero,complemento,bairro,uf,membros,ativos,individual,familiar,tipo);
		userDAO.updateUser(book);
		response.sendRedirect("list");
	}



}


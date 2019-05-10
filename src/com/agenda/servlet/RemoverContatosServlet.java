package com.agenda.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.agenda.modelos.Pessoas;
import com.agenda.service.CadastroUsuarioService;

@WebServlet("/remover-contato")

public class RemoverContatosServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CadastroUsuarioService service = new CadastroUsuarioService();

		long id = Long.parseLong(req.getParameter("id"));

		Pessoas pessoa = new Pessoas();
		pessoa.setId(id);

		service.removerContatos(pessoa);
		resp.sendRedirect("busca-contatos");

		

	}

}

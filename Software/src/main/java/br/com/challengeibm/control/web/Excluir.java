package br.com.challengeibm.control.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.challengeibm.model.dao.AlunoDAO;


public class Excluir implements Tarefa{
	
	@Override
	public String processarRequest(HttpServletRequest req, HttpServletResponse resp) {
		
		// Deletar no banco de dados //
		AlunoDAO dao = new AlunoDAO();
		
		String rm = req.getParameter("rm");
		String senha = req.getParameter("senha");

		dao.deletarAluno(rm, senha);
		
		return "volteSempre.jsp"; //Criar página de agradecimento


	}
}

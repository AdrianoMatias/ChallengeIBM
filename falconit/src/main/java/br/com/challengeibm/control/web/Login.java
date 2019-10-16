package br.com.challengeibm.control.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.challengeibm.model.business.AlunoBO;
import br.com.challengeibm.model.dao.AlunoDAO;
import br.com.challengeibm.model.entities.Aluno;

public class Login implements Tarefa {

	@Override
	public String processarRequest(HttpServletRequest req, HttpServletResponse resp) {

		String email = req.getParameter("email").toLowerCase();
		String senha = req.getParameter("senha");
		Aluno aluno = new AlunoBO().validarLogin(email, senha);
		
		if (aluno != null) {
			if(aluno.getSenha().equals(senha)) {
				HttpSession session = req.getSession();
				session.setAttribute("aluno", aluno);
				return "alunoCursando.jsp";
			} else {
				req.setAttribute("erro", "Senha inválida.");
				return "erro2.jsp";
			}
			
		} else {
			req.setAttribute("erro", "Usuário não existe.");
			return "erro.jsp";
		}

	}
}

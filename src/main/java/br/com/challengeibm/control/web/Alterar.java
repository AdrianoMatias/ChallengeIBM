package br.com.challengeibm.control.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.challengeibm.model.business.AlunoBO;
import br.com.challengeibm.model.dao.AlunoDAO;
import br.com.challengeibm.model.entities.Aluno;

public class Alterar implements Tarefa {
	@Override
	public String processarRequest(HttpServletRequest req, HttpServletResponse resp) {
		
		// Alterar no banco de dados //
		Aluno aluno = new Aluno();
		AlunoDAO dao = new AlunoDAO();
		AlunoBO bo = new AlunoBO(); 
		
		
		aluno.setNome(req.getParameter("nome"));
		aluno.setSobrenome(req.getParameter("sobrenome"));
		aluno.setCpf(req.getParameter("cpf"));
		aluno.setEmail(req.getParameter("email"));
		aluno.setRm(req.getParameter("rm"));
		aluno.setSenha(req.getParameter("senha"));
		aluno.setTelefone(req.getParameter("telefone"));
		aluno.setCep(req.getParameter("cep"));
		aluno.setLogr(req.getParameter("logr"));
		aluno.setNumero(req.getParameter("n"));
		aluno.setBairro(req.getParameter("bairro"));
		aluno.setCidade(req.getParameter("cidade"));
		aluno.setUf(req.getParameter("uf"));
		
		if (bo.novoAluno(aluno) == 1) {
			System.out.println("att");
			dao.atualizarAluno(aluno);
			
		} else {
			System.out.println("n att");
		}
		

		return "alterarConcluido.jsp"; // Criar página de cadastro concluido
	}

}

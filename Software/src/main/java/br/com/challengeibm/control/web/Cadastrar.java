package br.com.challengeibm.control.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.challengeibm.model.business.AlunoBO;
import br.com.challengeibm.model.dao.AlunoDAO;
import br.com.challengeibm.model.entities.Aluno;

public class Cadastrar implements Tarefa {

	@Override
	public String processarRequest(HttpServletRequest req, HttpServletResponse resp) {

		// cadastrar no banco de dados //

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
			System.out.println("Aluno cadastro.");
			dao.cadastrarAluno(aluno);
			return "sucesso.jsp"; // Criar página de cadastro concluido
		} else {
			System.out.println("dados inválidos");
			return "erroCadastro.jsp";
		}
	}
}

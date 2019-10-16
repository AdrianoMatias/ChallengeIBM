package br.com.challengeibm.model.business;

import br.com.challengeibm.model.dao.AlunoDAO;
import br.com.challengeibm.model.entities.Aluno;

public class AlunoBO {
	public Aluno validarLogin(String email, String senha) {
		return new AlunoDAO().consultarAluno(email);
	}

	public int novoAluno(Aluno aluno) {
		int x = 1;

		if (aluno.getNome().length() > 20 || aluno.getNome().length() <= 3) {
			System.out.println("O nome deve conter no min 3 caracteres e no max 20");
			x = 0;

		} else {
			aluno.setNome(aluno.getNome().toLowerCase());
		}

		if (aluno.getSobrenome().length() > 40 || aluno.getSobrenome().length() <= 3) {
			System.out.println("O sobrenome deve conter no min 3 caracteres e no max 40");
			x = 0;
		}else {
			aluno.setSobrenome(aluno.getSobrenome().toLowerCase().replaceAll(" ", "_"));
		}

		if (aluno.getSenha().length() < 4 || aluno.getSenha().length() > 20) {
			System.out.println("Senha deve estar entre 4 e 20 caracteres");
			x = 0;
		}
		if (aluno.getLogr().length() < 6 || aluno.getLogr().length() > 50) {
			System.out.println("Endereço inválido. Deve ter no min 6 e no max 50 caracteres");
			x = 0;
		} else {
			aluno.setLogr(aluno.getLogr().replaceAll(" ", "_"));
		}

		if (aluno.getBairro().length() < 4 || aluno.getBairro().length() > 40) {
			System.out.println("Bairro inválido. Deve ter no min 4 e no max 40 caracteres ");
			x = 0;
		} else {
			aluno.setBairro(aluno.getBairro().replaceAll(" ", "_"));
		}
		if (aluno.getCep().length() != 8) {
			System.out.println("Cep inválido. Deve ter 8 num");
			x = 0;
		}
		if (aluno.getCidade().length() < 3 || aluno.getCidade().length() > 30) {
			System.out.println("Cidade inválida. Deve ter no min 3 e no max 30 caracteres");
			x = 0;
		} else {
			aluno.setCidade(aluno.getCidade().replaceAll(" ", "_"));
		}
		if (aluno.getUf().length() != 2) {
			x = 0;
			System.out.println("UF deve ter 2 caracteres");
		} else {
			aluno.setUf(aluno.getUf().toUpperCase());
		}

		if (aluno.getCpf().length() < 11 || aluno.getCpf().length() > 14) {
			System.out.println("CPF ou CNPJ inválidos, deve conter 11 para cpf e 14 para cnpj");
		}

		if (aluno.getEmail().contains("@")) {
			if (aluno.getEmail().contains(".com") || aluno.getEmail().contains(".br")) {
				aluno.setEmail(aluno.getEmail().toLowerCase());
			}else {
				x=0;
			}

		} else {
			x=0;
		}

		if (aluno.getTelefone().length() < 10) {
			System.out.println("Telefone deve conter no min 10 caracteres");
			x = 0;
		} else {
			aluno.setTelefone(aluno.getTelefone().replace("(", "").replace(")", "").replaceAll(" ", "").replace("-", ""));
		}

		return x;

	}
}

package br.com.challengeibm.model.business;

import br.com.challengeibm.model.dao.AlunoDAO;
import br.com.challengeibm.model.entities.Aluno;


/**
 * Annotations entrega da AM - BO
 * 
*Esta classe é responsavel por realizar a validacao das informacoes
*disponibilizadas no momento do cadastro ou login do Aluno
*
*@author FalconIT
*
*@see Todas as classes que tem ligação com essa, assim:
*@see br.com.challengeibm.model.entities.Aluno
*@see br.com.challengeibm.model.business.AlunoDAO
*
*@version 1.0.0
*
**/

public class AlunoBO {
	
	/**
	 * Neste método por meio do RM e Senha será consultado
	 * no Banco de Dados se o Aluno já existe, e assim iniciando
	 * uma sessao ou nao
	 * @param rm
	 * @param senha
	 * @author FalconIT
	 * @version 1.0.0
	 * 
	 */
	
	public Aluno validarLogin(String rm, String senha) {
		return new AlunoDAO().consultarAluno(rm);
	}
	
	/**
	 * Neste método sera validado todas informacoes preenchidas 
	 * pelo Aluno no momento do cadastro, seguindo a Regra de Negócio
	 * @param objeto Aluno
	 * @author FalconIT
	 * @version 1.0.0
	 * 
	 */

	public int novoAluno(Aluno aluno) {
		int x = 1;
		//Regra de Negócios
		if (aluno.getNome().length() > 20 || aluno.getNome().length() <= 3) {
			System.out.println("O nome deve conter no min 3 caracteres e no max 20");
			x = 0;

		} else {
			aluno.setNome(aluno.getNome().toLowerCase()); //Padronização
		}
		//Regra de Negócios
		if (aluno.getSobrenome().length() > 40 || aluno.getSobrenome().length() <= 3) {
			System.out.println("O sobrenome deve conter no min 3 caracteres e no max 40");
			x = 0;
		}else {
			aluno.setSobrenome(aluno.getSobrenome().toLowerCase().replaceAll(" ", "_"));  //Padronização
		}
		//Regra de Negócios
		if (aluno.getSenha().length() < 4 || aluno.getSenha().length() > 20) {
			System.out.println("Senha deve estar entre 4 e 20 caracteres");
			x = 0;
		}
		//Regra de Negócios
		if (aluno.getRm().length() < 5) {
			System.out.println("RM muito curto, deve ter no min 5 caracteres");
			x = 0;
		}
		//Regra de Negócios
		if (aluno.getLogr().length() < 6 || aluno.getLogr().length() > 50) {
			System.out.println("Endereço inválido. Deve ter no min 6 e no max 50 caracteres");
			x = 0;
		} else {
			aluno.setLogr(aluno.getLogr().replaceAll(" ", "_"));
		}
		//Regra de Negócios
		if (aluno.getBairro().length() < 4 || aluno.getBairro().length() > 40) {
			System.out.println("Bairro inválido. Deve ter no min 4 e no max 40 caracteres ");
			x = 0;
		} else {
			aluno.setBairro(aluno.getBairro().replaceAll(" ", "_"));
		}
		//Regra de Negócios
		if (aluno.getCep().length() != 8) {
			System.out.println("Cep inválido. Deve ter 8 num");
			x = 0;
		}
		//Regra de Negócios
		if (aluno.getCidade().length() < 3 || aluno.getCidade().length() > 30) {
			System.out.println("Cidade inválida. Deve ter no min 3 e no max 30 caracteres");
			x = 0;
		} else {
			aluno.setCidade(aluno.getCidade().replaceAll(" ", "_"));
		}
		//Regra de Negócios
		if (aluno.getUf().length() != 2) {
			x = 0;
			System.out.println("UF deve ter 2 caracteres");
		} else {
			aluno.setUf(aluno.getUf().toUpperCase());  //Padronização
		}
		//Regra de Negócios
		if (aluno.getCpf().length() < 11 || aluno.getCpf().length() > 14) {
			System.out.println("CPF ou CNPJ inválidos, deve conter 11 para cpf e 14 para cnpj");
		}
		//Regra de Negócios
		if (aluno.getEmail().contains("@")) {
			if (aluno.getEmail().contains(".com") || aluno.getEmail().contains(".br")) {
				aluno.setEmail(aluno.getEmail().toLowerCase()); //Padronização
			}else {
				x=0;
			}

		} else {
			x=0;
		}
		//Regra de Negócios
		if (aluno.getTelefone().length() < 10) {
			System.out.println("Telefone deve conter no min 10 caracteres");
			x = 0;
		} else {
			aluno.setTelefone(aluno.getTelefone().replace("(", "").replace(")", "").replaceAll(" ", "").replace("-", ""));
		}
		//Finalmente retorna preenchido
		return x;
	}
}

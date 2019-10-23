package br.com.challengeibm.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.challengeibm.model.entities.Aluno;
import br.com.challengeibm.model.services.Conexao;

/**
 * Annotations entrega da AM - DAO
 * 
*Esta classe é responsavel por realizar o CRUD
*na tabela FN_ALUNO e FN_ENDERECO, que possui:
*PK_CodAluno
*FK_Endereco
*RM_Aluno é obrigatória 
*
*@author FalconIT
*
*@see Todas as classes que tem ligação com essa, assim:
*@see br.com.challengeibm.model.services.Conexao
*@see br.com.challengeibm.model.entities.Aluno
*@see br.com.challengeibm.model.business.AlunoBO
*
*@version 1.0.0
*
**/

public class AlunoDAO {
	
	/**
	 * Neste método por meio do RM será retornado um objeto
	 * vazio ou preenchido com o objeto Aluno
	 * @param rm
	 * @author FalconIT
	 * @version 1.0.0
	 * 
	 */
	
	public Aluno consultarAluno(String rm) {

		/**
		 * O método queroConectar é responsável por abrir a conexão com o Banco de Dados
		 * @author FalconIT
		 * @version 1.0.0
		 * 
		 */
		
		Aluno aluno = null;

		try (Connection conn = Conexao.queroConectar()) {
			//PreparedStatement executa a linha SQL
			PreparedStatement stmt = conn
					.prepareStatement("SELECT * FROM FN_ALUNO WHERE RM_ALUNO = ?");

			stmt.setString(1, rm);
			//stmt.setString(2, senha);
		
            //Recebe o que retorna do Banco de Dados
			ResultSet rs = stmt.executeQuery();

			//O Objeto Aluno traz todas as informacoes do Aluno para que seja iniciada a sessão
			aluno = new Aluno();
			if (rs.next()) {
				Aluno setandoAluno = new Aluno();
				setandoAluno.setCod(rs.getInt("ID_ALUNO")); 
				setandoAluno.setNome(rs.getString("NM_ALUNO"));
				setandoAluno.setSobrenome(rs.getString("SOBRENOME_ALUNO"));
				setandoAluno.setCpf(rs.getString("CPF_ALUNO"));
				setandoAluno.setRm(rs.getString("RM_ALUNO"));
				setandoAluno.setEmail(rs.getString("EMAIL_ALUNO"));
				setandoAluno.setSenha(rs.getString("PW_ALUNO"));
				setandoAluno.setTelefone(rs.getString("TELEFONE_ALUNO"));
				setandoAluno.setCep(rs.getString("CEP"));
				setandoAluno.setLogr(rs.getString("LOGR"));
				setandoAluno.setNumero(rs.getString("NUMERO"));
				setandoAluno.setBairro(rs.getString("BAIRRO"));
				setandoAluno.setCidade(rs.getString("CIDADE"));		
				setandoAluno.setUf(rs.getString("UF"));
				
				aluno = setandoAluno;
			}else {
				aluno=null;
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return aluno;
	}
	
	/**
	 * Neste método é criado um objeto Aluno
	 * preenchendo as entidades com dados e as inserindo no Banco de Dados
	 * @author FalconIT
	 * @version 1.0.0
	 * 
	 */

	public Aluno cadastrarAluno(Aluno a) {
		
		/**
		 * O método queroConectar é responsável por abrir a conexão com o Banco de Dados
		 * @author FalconIT
		 * @version 1.0.0
		 * 
		 */

		Aluno aluno = null;
		try (Connection conn = Conexao.queroConectar()) {
			PreparedStatement stmt = conn.prepareStatement(
					"INSERT INTO FN_ALUNO (ID_ALUNO, NM_ALUNO, SOBRENOME_ALUNO, CPF_ALUNO, EMAIL_ALUNO, RM_ALUNO, PW_ALUNO,"
							+ " TELEFONE_ALUNO, CEP, LOGR, NUMERO, BAIRRO, CIDADE, UF ) VALUES (aluno_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			stmt.setString(1, a.getNome());
			stmt.setString(2, a.getSobrenome());
			stmt.setString(3, a.getCpf());
			stmt.setString(4, a.getEmail());
			stmt.setString(5, a.getRm());
			stmt.setString(6, a.getSenha());
			stmt.setString(7, a.getTelefone());
			stmt.setString(8, a.getCep());
			stmt.setString(9, a.getLogr());
			stmt.setString(10, a.getNumero());
			stmt.setString(11, a.getBairro());
			stmt.setString(12, a.getCidade());
			stmt.setString(13, a.getUf());

			stmt.executeUpdate();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return aluno;
	}
	
	/**
	 * Neste método por meio do RM será atualizado um objeto
	 * preenchido com novas informacoes do objeto Aluno e alteradas no Banco de Dados
	 * @param objeto Aluno
	 * @author FalconIT
	 * @version 1.0.0
	 * 
	 */

	public Aluno atualizarAluno(Aluno a) {
		
		/**
		 * O método queroConectar é responsável por abrir a conexão com o Banco de Dados
		 * @author FalconIT
		 * @version 1.0.0
		 * 
		 */

		Aluno aluno = null;

		try (Connection conn = Conexao.queroConectar()) {
			PreparedStatement stmt = conn.prepareStatement(
					"UPDATE FN_ALUNO SET NM_ALUNO=?, "
					+ "SOBRENOME_ALUNO=?, CPF_ALUNO=?, EMAIL_ALUNO=?, PW_ALUNO=?,"
					+ " TELEFONE_ALUNO=?, CEP=?, LOGR=?, NUMERO=?, BAIRRO=?,"
							+ "CIDADE=?, UF=?"
							+ " WHERE RM_ALUNO=?");
			
			stmt.setString(1, a.getNome());
			stmt.setString(2, a.getSobrenome());
			stmt.setString(3, a.getCpf());
			stmt.setString(4, a.getEmail());
			stmt.setString(5, a.getSenha());
			stmt.setString(6, a.getTelefone());
			stmt.setString(7, a.getCep());
			stmt.setString(8, a.getLogr());
			stmt.setString(9, a.getNumero());
			stmt.setString(10, a.getBairro());
			stmt.setString(11, a.getCidade());
			stmt.setString(12, a.getUf());
			stmt.setString(13, a.getRm());

			stmt.executeUpdate();

			return aluno;
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return aluno;
	}

	/**
	 * Neste método por meio do RM será excluido um objeto Aluno do Banco de Dados
	 * @param rm
	 * @param senha
	 * @author FalconIT
	 * @version 1.0.0
	 * 
	 */
	
	public Aluno deletarAluno(String rm, String senha) {
		
		/**
		 * O método queroConectar é responsável por abrir a conexão com o Banco de Dados
		 * @author FalconIT
		 * @version 1.0.0
		 * 
		 */
		Aluno aluno = null;
		
		try (Connection conn = Conexao.queroConectar()) {
			PreparedStatement stmt = conn.prepareStatement("DELETE FROM FN_ALUNO WHERE RM_ALUNO=? and PW_ALUNO=?");
			stmt.setString(1, rm);
			stmt.setString(2, senha);
			stmt.executeUpdate();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return aluno;
	}
}

package br.com.challengeibm.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.challengeibm.model.entities.Aluno;
import br.com.challengeibm.model.services.Conexao;

public class AlunoDAO {
	public Aluno consultarAluno(String email) {

		Aluno aluno = null;

		try (Connection conn = Conexao.queroConectar()) {
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM FN_ALUNO WHERE EMAIL_ALUNO = ?");

			stmt.setString(1, email.toLowerCase());

			ResultSet rs = stmt.executeQuery();

			aluno = new Aluno();
			if (rs.next()) {
				Aluno setandoAluno = new Aluno();
				setandoAluno.setCod(rs.getInt("ID_ALUNO"));
				setandoAluno.setNome(rs.getString("NM_ALUNO"));
				setandoAluno.setSobrenome(rs.getString("SOBRENOME_ALUNO"));
				setandoAluno.setCpf(rs.getString("CPF_ALUNO"));
				setandoAluno.setEmail(rs.getString("EMAIL_ALUNO").toLowerCase());
				setandoAluno.setSenha(rs.getString("PW_ALUNO"));
				setandoAluno.setTelefone(rs.getString("TELEFONE_ALUNO"));
				setandoAluno.setCep(rs.getString("CEP"));
				setandoAluno.setLogr(rs.getString("LOGR"));
				setandoAluno.setNumero(rs.getString("NUMERO"));
				setandoAluno.setBairro(rs.getString("BAIRRO"));
				setandoAluno.setCidade(rs.getString("CIDADE"));
				setandoAluno.setUf(rs.getString("UF"));

				aluno = setandoAluno;
			} else {
				aluno = null;
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();

		}

		return aluno;
	}

	public Aluno cadastrarAluno(Aluno a) {

		Aluno aluno = null;
		try (Connection conn = Conexao.queroConectar()) {
			PreparedStatement stmt = conn.prepareStatement(
					"INSERT INTO FN_ALUNO (ID_ALUNO, NM_ALUNO, SOBRENOME_ALUNO, CPF_ALUNO, EMAIL_ALUNO, PW_ALUNO,"
							+ " TELEFONE_ALUNO, CEP, LOGR, NUMERO, BAIRRO, CIDADE, UF) VALUES (aluno_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?)");

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

			stmt.executeUpdate();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return aluno;
	}

	public Aluno atualizarAluno(Aluno a) {

		Aluno aluno = null;

		try (Connection conn = Conexao.queroConectar()) {
			PreparedStatement stmt = conn.prepareStatement(
					"UPDATE FN_ALUNO SET NM_ALUNO=?, " + "SOBRENOME_ALUNO=?, CPF_ALUNO=?, EMAIL_ALUNO=?, PW_ALUNO=?,"
							+ " TELEFONE_ALUNO=?, CEP=?, LOGR=?, NUMERO=?, BAIRRO=?," + "CIDADE=?, UF=?");
			// stmt.setInt(1, 1);
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

			stmt.executeUpdate();

			return aluno;
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return aluno;
	}

	public Aluno deletarAluno(String email, String senha) {
		Aluno aluno = null;
		try (Connection conn = Conexao.queroConectar()) {
			PreparedStatement stmt = conn.prepareStatement("DELETE FROM FN_ALUNO WHERE EMAIL_ALUNO=? and PW_ALUNO=?");
			stmt.setString(1, email);
			stmt.setString(2, senha);
			stmt.executeUpdate();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return aluno;
	}

}

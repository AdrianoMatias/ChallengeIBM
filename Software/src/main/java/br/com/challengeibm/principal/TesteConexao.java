package br.com.challengeibm.principal;

import java.sql.Connection;

import br.com.challengeibm.model.services.Conexao;

public class TesteConexao {

	public static void main(String[] args) {
		Connection conectar = null;
		try {
			conectar = Conexao.queroConectar();
			System.out.println("Conectou");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conectar.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}

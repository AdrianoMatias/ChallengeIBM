package br.com.fiap.falconIt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.fiap.falconIt.conexão.Conexao;
import br.com.fiap.falconIt.entities.Usuario;



public class UsuarioDAO {
	private Connection con;
	private PreparedStatement stmt;

	public UsuarioDAO() throws Exception {
		con = Conexao.queroConectar();
	}

	public int getUser(String rm, String senha) throws Exception {
		stmt = con.prepareStatement
				("select * from AM_USUARIO where RM_USUARIO=? and PW_USUARIO=?");
		stmt.setString(1, rm); 
		stmt.setString(2, senha);
		return stmt.executeUpdate();
	} 
	
	public int addUser(Usuario u) throws Exception{ 
		stmt = con.prepareStatement("INSERT INTO "
				+ "AM_USUARIO(ID_USUARIO, NM_USUARIO, EMAIL_USUARIO, RM_USUARIO, PW_USUARIO)"
				+ "VALUES(c_usuario_seq.nextval ,?,?,?,?)");  
		//stmt.setInt(1, u.getId_usuario());
		stmt.setString(1, u.getNome());
		stmt.setString(2, u.getEmail()); 
		stmt.setString(3, u.getRm());
		stmt.setString(4, u.getSenha());
		return stmt.executeUpdate();
	} 
	
	public int atualizarUser(String rm) throws Exception {
		stmt = con.prepareStatement
				("update AM_USUARIO set NM_USUARIO = ?, EMAIL_USUARIO = ?, "
						+ "RM_USUARIO = ?, PW_USUARIO = ? WHERE RM_USUARIO = ?"); 
		stmt.setString(1, rm); 
		return stmt.executeUpdate();
	}
	public int deletarUser(String rm) throws Exception {
		stmt = con.prepareStatement("delete from AM_USUARIO where RM_USUARIO=?");
		stmt.setString(1, rm);
		return stmt.executeUpdate();
	}

	public void encerrar() throws Exception {
		con.close();
	}
}

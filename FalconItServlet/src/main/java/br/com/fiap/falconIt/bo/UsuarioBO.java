package br.com.fiap.falconIt.bo;

import br.com.fiap.falconIt.dao.UsuarioDAO;
import br.com.fiap.falconIt.entities.Usuario;

public class UsuarioBO {

	public int novoUsuario(Usuario objUsuario) throws Exception{
		if(objUsuario.getNome().length() > 50) {
			throw new RuntimeException("Excedeu caracteres");
		} 
		if(objUsuario.getNome().length() <= 3) {
			throw new RuntimeException("Poucos caracteres");
		} 
		if(objUsuario.getSenha().length() < 3 || objUsuario.getSenha().length() > 20) {
			throw new RuntimeException("Senha deve estar entre 3 e 20 caracteres");
		}  
		if(objUsuario.getEmail().length() > 50) {
			throw new RuntimeException("Excedeu caracteres");
		} 
		if(objUsuario.getEmail().length() <= 3) {
			throw new RuntimeException("Poucos caracteres");
		} 
		if(objUsuario.getRm().length() < 5 ) {
			throw new RuntimeException("RM muito curto");
		}  
		if(objUsuario.getRm().length() > 7 ) {
			throw new RuntimeException("RM muito longo");
		} 
		objUsuario.setNome(objUsuario.getNome().toUpperCase());
		UsuarioDAO dao = new UsuarioDAO();  
		if (dao.getUser(objUsuario.getRm(), objUsuario.getSenha()) == 0) {
			dao.addUser(objUsuario); 
			dao.encerrar(); 
			return 1;
		} else {  
			dao.encerrar();
			return 0;
		}
	} 
	
	public int validarLogin(String rm, String senha) throws Exception { 
		return new UsuarioDAO().getUser(rm, senha);
	}
}

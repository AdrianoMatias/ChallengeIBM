package br.com.fiap.falconIt.bo;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import br.com.fiap.falconIt.dao.UsuarioDAO;
import br.com.fiap.falconIt.entities.Usuario;

public class UsuarioBO {
	public static boolean isValidEmailAddressRegex(String email) {
	    boolean isEmailIdValid = false;
	    if (email != null && email.length() > 0) {
	        String expression = "^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{2,4}$";
	        Pattern pattern = Pattern.compile(expression, Pattern.CASE_INSENSITIVE);
	        Matcher matcher = pattern.matcher(email);
	        if (matcher.matches()) {
	            isEmailIdValid = true;
	        }
	    }
	    return isEmailIdValid;
	}
	
	public int novoUsuario(Usuario objUsuario) throws Exception{
		if(objUsuario.getNome().length() > 50 || objUsuario.getNome().length() <= 3) {
			throw new RuntimeException("O nome deve conter no min 3 caracteres e no max 50");
		} 
		
		if(objUsuario.getSenha().length() < 4 || objUsuario.getSenha().length() > 20) {
			throw new RuntimeException("Senha deve estar entre 4 e 20 caracteres");
		}  
		
		if(objUsuario.getRm().length() != 5 ) {
			throw new RuntimeException("RM inválido");
		}  
		if(!isValidEmailAddressRegex(objUsuario.getEmail())) {
			throw new RuntimeException("Email inválido");
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

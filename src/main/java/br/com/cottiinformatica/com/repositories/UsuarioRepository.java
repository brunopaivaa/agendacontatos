package br.com.cottiinformatica.com.repositories;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.cotiinformatica.entities.Usuario;
import br.com.cottiinformatica.factories.ConnectionFactory;

public class UsuarioRepository {
	
	public void creat(Usuario usuario) throws Exception{
		
		Connection connection = ConnectionFactory.createConnection();
		
		PreparedStatement statement = connection.prepareStatement("INSERT INTO usuario(nome, email, senha) values(?, ?, md5(?))");
		statement.setString(1, usuario.getNome());
		statement.setString(2, usuario.getEmail());
		statement.setString(3, usuario.getSenha());
		statement.execute();
		
		connection.close();
	}
	
	public Usuario findByEmail(String email) throws Exception{
		
		Connection connection = ConnectionFactory.createConnection();
		PreparedStatement statement = connection.prepareStatement("SELECT * from usuario where email = ?");
		statement.setString(1, email);
		ResultSet resultSet = statement.executeQuery();
		
		Usuario usuario = null;
		
		if(resultSet.next()) {
			
			usuario = new Usuario();
			
			usuario.setIdUsuario(resultSet.getInt("idusuario"));
			usuario.setNome(resultSet.getString("nome"));
			usuario.setEmail(resultSet.getString("email"));
			usuario.setSenha(resultSet.getString("senha"));
		}
		connection.close();
		return usuario;
		
	}
	
	
	public Usuario findByEmailAndSenha(String email, String senha) throws Exception{
		
		Connection connection = ConnectionFactory.createConnection();
		PreparedStatement statement = connection.prepareStatement("SELECT * from usuario where email = ? and senha = md5(?)");
		statement.setString(1, email);
		statement.setString(2, senha);
		ResultSet resultSet = statement.executeQuery();
		
		Usuario usuario = null;
		
		if(resultSet.next()) {
			
			usuario = new Usuario();
			
			usuario.setIdUsuario(resultSet.getInt("idusuario"));
			usuario.setNome(resultSet.getString("nome"));
			usuario.setEmail(resultSet.getString("email"));
			usuario.setSenha(resultSet.getString("senha"));
		}
		connection.close();
		return usuario;
		
	}
	
	
	
	

}

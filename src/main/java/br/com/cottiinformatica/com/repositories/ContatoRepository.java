package br.com.cottiinformatica.com.repositories;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.cotiinformatica.entities.Contato;
import br.com.cottiinformatica.factories.ConnectionFactory;

public class ContatoRepository {

	public void create(Contato contato) throws Exception{
		
		Connection connection = ConnectionFactory.createConnection();
		
		PreparedStatement statement = connection.prepareStatement("INSERT INTO contato(nome, email, telefone, idusuario) values(?,?,?,?)");
		statement.setString(1, contato.getNome());
		statement.setString(2, contato.getEmail());
		statement.setString(3, contato.getTelefone());
		statement.setInt(4, contato.getUsuario().getIdUsuario());
		statement.execute();
		
		connection.close();
	}
	
	public List<Contato> findbyUsuario(Integer idUsuario) throws Exception{
		
		Connection connection = ConnectionFactory.createConnection();
		
		PreparedStatement statement = connection.prepareStatement("SELECT * FROM contato WHERE idusuario = ?");
		statement.setInt(1, idUsuario);
		ResultSet resultSet = statement.executeQuery();
		
		List<Contato> lista = new ArrayList<Contato>();
		
		while(resultSet.next()) {
			Contato contato = new Contato();
			
			contato.setIdContato(resultSet.getInt("idcontato"));
			contato.setNome(resultSet.getString("nome"));
			contato.setEmail(resultSet.getString("email"));
			contato.setTelefone(resultSet.getString("telefone"));
			
			lista.add(contato);
			
		}
		
		return lista;
	}

	
}

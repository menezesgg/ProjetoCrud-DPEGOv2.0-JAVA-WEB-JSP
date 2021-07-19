
package com.xadmin.usermanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.xadmin.usermanagement.model.Atendimento;
import com.xadmin.usermanagement.model.User;



public class USerDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/demo?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "";

	private static final String INSERT_USERS_SQL = "INSERT INTO users"  + "  (nome, cpf, nascimento, mae, pai, "
			+ "genero, telefone, celular, email, escolaridade, civil,"
			+ "cep, lagradouro, numero, complemento,  bairro, uf, membros, ativos, individual, familiar, "
			+ "tipo) VALUES "
			+ " (?, ?, ?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?, ?, ?);";

	private static final String SELECT_USER_BY_ID = "select id, nome,cpf,nascimento, mae, pai, genero,"
			+ " telefone, celular, email, escolaridade, civil, cep, lagradouro, numero, complemento, bairro, "
			+ "uf, membros, ativos, individual, familiar, tipo from users where id = ?";
	
	private static final String SELECT_ALL_USERS = "select * from users";
	
	
	private static final String UPDATE_USERS_SQL = "update users set nome = ?,cpf= ?, nascimento =?, mae =?, pai =?, "
			+ "genero =?, telefone =?, celular =?, email =?,escolaridade =?, civil =?, cep=?, lagradouro=?, numero=?, "
			+ "complemento =?, bairro =?, uf = ?, membros=?, ativos=?, individual = ?, familiar = ?, tipo = ? where id = ?;";
	
	
	private static final String UPDATE_ATENDER_SQL = "SELECT users.nome,users.cpf,users.tipo,atende.defensor,"
			+ "atende.resumo FROM Atividade INNER JOIN users on atende WHERE id = ?";
	
	private static final String INSERT_ATENDER_SQL = "INSERT INTO atende (id_user, defensor, resumo) VALUES (?,?,?) ;";
	
	
	

	public USerDAO() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public void insertUser(User user) throws SQLException {
		System.out.println(INSERT_USERS_SQL);
		// Instrução try-with-resource fechará automaticamente a conexão.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			
			preparedStatement.setString(1, user.getNome());
			preparedStatement.setString(2, user.getCpf());
			preparedStatement.setString(3, user.getNascimento());
			preparedStatement.setString(4, user.getMae());
			preparedStatement.setString(5, user.getPai());
			preparedStatement.setString(6, user.getGenero());
			preparedStatement.setString(7, user.getTelefone());
			preparedStatement.setString(8, user.getCelular());
			preparedStatement.setString(9, user.getEmail());
			preparedStatement.setString(10, user.getEscolaridade());
			preparedStatement.setString(11, user.getCivil());	
			preparedStatement.setString(12, user.getCep());
			preparedStatement.setString(13, user.getLagradouro());
			preparedStatement.setString(14, user.getNumero());
			preparedStatement.setString(15, user.getComplemento());
			preparedStatement.setString(16, user.getBairro());
			preparedStatement.setString(17, user.getUf());
			preparedStatement.setString(18, user.getMembros());
			preparedStatement.setString(19, user.getAtivos());
			preparedStatement.setString(20, user.getIndividual());
			preparedStatement.setString(21, user.getFamiliar());
			preparedStatement.setString(22, user.getTipo());

			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public User selectUser(int id) {
		User user = null;
		//Estabelecendo uma conexão
		try (Connection connection = getConnection();
				//Cria uma declaração usando o objeto de conexão
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			//Execute a consulta ou atualize a consulta
			ResultSet rs = preparedStatement.executeQuery();

			//Processa o objeto ResultSet.
			while (rs.next()) {
				
				String nome = rs.getString("nome");
				String cpf = rs.getString("cpf");
				String nascimento = rs.getString("nascimento");
				String mae = rs.getString("mae");
				String pai = rs.getString("pai");
				String genero = rs.getString("genero");
				String telefone = rs.getString("telefone");
				String celular = rs.getString("celular");
				String email = rs.getString("email");
				String escolaridade = rs.getString("escolaridade");
				String civil = rs.getString("civil");
				String cep = rs.getString("cep");
				String lagradouro = rs.getString("lagradouro");
				String numero = rs.getString("numero");
				String complemento = rs.getString("complemento");
				String bairro = rs.getString("bairro");
				String uf = rs.getString("uf");
				String membros = rs.getString("membros");
				String ativos = rs.getString("ativos");
				String individual = rs.getString("individual");
				String familiar = rs.getString("familiar");
				String tipo = rs.getString("tipo");
				
				user  = new User(id, nome, cpf, nascimento, mae, pai, genero, telefone, celular, email, escolaridade, civil, cep, lagradouro, numero, complemento, bairro, uf, membros, ativos, individual, familiar, tipo);
				
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return user;
	}

	public List<User> selectAllUsers() {

		// Usando try-with-resources para evitar o fechamento de recursos (código padrão)
		List<User> users = new ArrayList<>();
		// Estabelecendo uma conexão
		try (Connection connection = getConnection();

				// Criar uma declaração usando o objeto de conexão
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
			System.out.println(preparedStatement);
			// Execute a consulta ou atualize a consulta
			ResultSet rs = preparedStatement.executeQuery();

			// Processa o objeto ResultSet.
			while (rs.next()) {
				
				int id = rs.getInt("id");
				
				String nome = rs.getString("nome");
				String cpf = rs.getString("cpf");
				String nascimento = rs.getString("nascimento");
				String mae = rs.getString("mae");
				String pai = rs.getString("pai");
				String genero = rs.getString("genero");
				String telefone = rs.getString("telefone");
				String celular = rs.getString("celular");
				String email = rs.getString("email");
				String escolaridade = rs.getString("escolaridade");
				String civil = rs.getString("civil");
				String cep = rs.getString("cep");
				String lagradouro = rs.getString("lagradouro");
				String numero = rs.getString("numero");
				String complemento = rs.getString("complemento");
				String bairro = rs.getString("bairro");
				String uf = rs.getString("uf");
				String membros = rs.getString("membros");
				String ativos = rs.getString("ativos");
				String individual = rs.getString("individual");
				String familiar = rs.getString("familiar");
				String tipo = rs.getString("tipo");
				
				users.add(new User(id,nome, cpf, nascimento, mae, pai, genero, telefone, celular, email, escolaridade, civil, cep, lagradouro, numero, complemento, bairro, uf, membros, ativos, individual,familiar, tipo));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return users;
	}

	
	public boolean updateUser(User user) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
			System.out.println("updated USer:"+statement);
			
			statement.setString(1, user.getNome());
			statement.setString(2, user.getCpf());
			statement.setString(3, user.getNascimento());
			statement.setString(4, user.getMae());
			statement.setString(5, user.getPai());
			statement.setString(6, user.getGenero());
			statement.setString(7, user.getTelefone());
			statement.setString(8, user.getCelular());
			statement.setString(9, user.getEmail());
			statement.setString(10, user.getEscolaridade());
			statement.setString(11, user.getCivil());
			statement.setString(12, user.getCep());
			statement.setString(13, user.getLagradouro());
			statement.setString(14, user.getNumero());
			statement.setString(15, user.getComplemento());
			statement.setString(16, user.getBairro());
			statement.setString(17, user.getUf());
			statement.setString(18, user.getMembros());
			statement.setString(19, user.getAtivos());
			statement.setString(20, user.getIndividual());
			statement.setString(21, user.getFamiliar());
			statement.setString(22, user.getTipo());
			statement.setInt(23, user.getId());
			
			
			
			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

	public static String getUpdateAtenderSql() {
		return UPDATE_ATENDER_SQL;
	}
	
	public void insertAtendimento(Atendimento at ) {
		System.out.println(INSERT_ATENDER_SQL);
		// Instrução try-with-resource fechará automaticamente a conexão.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ATENDER_SQL)) {
			preparedStatement.setInt(1, at.getId_user());
			preparedStatement.setString(2, at.getDefensor());
			preparedStatement.setString(3,at.getResumo());
			
			System.out.println(preparedStatement);
			
			preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
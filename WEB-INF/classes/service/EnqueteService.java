package service;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import javax.naming.*;
import javax.sql.*;

import model.Enquete;
import model.Question;

public class EnqueteService {
	private List<Enquete> enquetes;

	public EnqueteService()
	{
		this.enquetes = new ArrayList<Enquete>();
	}

	public List<Enquete> getEnquetes()
	{
		if (this.enquetes.isEmpty()) {
			try {
				Context initContext = new InitialContext();
				DataSource ds = (DataSource) initContext.lookup("java:/comp/env/jdbc/EnqueteDB");
				Connection conn = ds.getConnection();
				Statement stmt = conn.createStatement();

				ResultSet rs = stmt.executeQuery("SELECT id, name FROM enquete");
				while (rs.next()) {
					this.enquetes.add(new Enquete(rs.getInt(1), rs.getString(2)));
				}
				rs.close();
				stmt.close();
				conn.close();
			} catch (NamingException ne) {
				System.out.println("Datasource niet gevonden! "+ne);
			} catch (SQLException sql) {
				System.out.println("Fout in sql! "+ sql);
			}
		}
		return this.enquetes;
	}
}
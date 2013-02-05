package service;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import javax.naming.*;
import javax.sql.*;

import model.Enquete;
import model.Question;
import model.Choice;

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
				Statement estmt = conn.createStatement();
				Statement qstmt = conn.createStatement();
				Statement cstmt = conn.createStatement();

				ResultSet ers = estmt.executeQuery("SELECT id, name FROM enquete");
				while (ers.next()) {
					Enquete enquete = new Enquete(ers.getInt(1), ers.getString(2));
					ResultSet qrs = qstmt.executeQuery("SELECT id, type, question FROM question WHERE enquete_id = " + ers.getInt(1));
					while (qrs.next()) {
						Question question = new Question(qrs.getInt(1), qrs.getInt(2), enquete, qrs.getString(3));
						if (qrs.getInt(2) == 0) {
							ResultSet crs = cstmt.executeQuery("SELECT id, choice FROM choice WHERE question_id = " + qrs.getInt(1));
							while (crs.next()) {
								Choice choice = new Choice(crs.getInt(1), question, crs.getString(2));
								question.addChoice(choice);
							}
							crs.close();
							cstmt.close();
						}
						enquete.addQuestion(question);
					}
					this.enquetes.add(enquete);
					qrs.close();
					qstmt.close();
				}
				ers.close();
				estmt.close();
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
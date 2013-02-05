package model;

import java.util.List;
import java.util.ArrayList;

import model.Enquete;

public class Question {
	private int id;
	private int type;
	private Enquete enquete;
	private String question;
	private String[] answers;

	public Question()
	{
		this.answers = new String[4];
	}
	public Question(int id, int type, Enquete enquete, String question)
	{
		this.id = id;
		this.type = type;
		this.enquete = enquete;
		this.question = question;
		this.answers = new String[4];
	}

	public Question setId(int id)
	{
		this.id = id;
		return this;
	}
	public int getId()
	{
		return this.id;
	}

	public Question setType(int type)
	{
		this.type = type;
		return this;
	}
	public int getType()
	{
		return this.type;
	}

	public Question setEnquete(Enquete enquete)
	{
		this.enquete = enquete;
		return this;
	}
	public Enquete getEnquete()
	{
		return this.enquete;
	}

	public Question setQuestion(String question)
	{
		this.question = question;
		return this;
	}
	public String getQuestion()
	{
		return this.question;
	}

	public Question setAnswer(String[] answers)
	{
		this.answers = answers;
		return this;
	}
	public String[] getAnswers()
	{
		return this.answers;
	}
}
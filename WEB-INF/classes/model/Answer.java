package model;

import java.util.List;
import java.util.ArrayList;

import model.Question;

public class Answer {
	private int id;
	private Question question;
	private Enquete enquete;
	private String username;
	private String answer;

	public Answer()
	{

	}
	public Answer(int id, Question question, Enquete enquete, String username, String answer)
	{
		this.id = id;
		this.question = question;
		this.enquete = enquete;
		this.username = username;
		this.answer = answer;		
	}

	public Answer setId(int id)
	{
		this.id = id;
		return this;
	}
	public int getId()
	{
		return this.id;
	}

	public Answer setQuestion(Question question)
	{
		this.question = question;
		return this;
	}
	public Question getQuestion()
	{
		return this.question;
	}

	public Answer setEnquete(Enquete enquete)
	{
		this.enquete = enquete;
		return this;
	}
	public Enquete getEnquete()
	{
		return this.enquete;
	}

	public Answer setUsername(String username)
	{
		this.username = username;
		return this;
	}
	public String getUsername()
	{
		return this.username;
	}

	public Answer setAnswer(String answer)
	{
		this.answer = answer;
		return this;
	}
	public String getAnswer()
	{
		return this.answer;
	}
}
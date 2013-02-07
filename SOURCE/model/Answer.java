package model;

import java.util.List;
import java.util.ArrayList;

import model.Question;

public class Answer {
	private int id;
	private Question question;
	private Enquete enquete;
	private int index;
	private String username;
	private String answer;
	private String extra;

	public Answer()
	{

	}
	public Answer(int id, Question question, Enquete enquete, String username, int index, String answer, String extra)
	{
		this.id = id;
		this.question = question;
		this.enquete = enquete;
		this.index = index;
		this.username = username;
		this.answer = answer;
		this.extra = extra;	
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

	public Answer setIndex(int index)
	{
		this.index = index;
		return this;
	}
	public int getIndex()
	{
		return this.index;
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

	public Answer setExtra(String extra)
	{
		this.extra = extra;
		return this;
	}
	public String getExtra()
	{
		return this.extra;
	}
}
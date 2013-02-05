package model;

import java.util.List;
import java.util.ArrayList;

import model.Enquete;
import model.Choice;

public class Question {
	private int id;
	private int type;
	private Enquete enquete;
	private String question;
	private List<Choice> choices;

	public Question()
	{
		this.choices = new ArrayList<Choice>();
	}
	public Question(int id, int type, Enquete enquete, String question)
	{
		this.id = id;
		this.type = type;
		this.enquete = enquete;
		this.question = question;
		this.choices = new ArrayList<Choice>();
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

	public Question addChoice(Choice choice)
	{
		this.choices.add(choice);
		return this;
	}
	public List<Choice> getChoices()
	{
		return this.choices;
	}
}
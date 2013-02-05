package model;

import java.util.List;
import java.util.ArrayList;

import model.Question;

public class Choice {
	private int id;
	private Question question;
	private String choice;

	public Choice()
	{

	}
	public Choice(int id, Question question, String choice)
	{
		this.id = id;
		this.question = question;
		this.choice = choice;		
	}

	public Choice setId(int id)
	{
		this.id = id;
		return this;
	}
	public int getId()
	{
		return this.id;
	}

	public Choice setQuestion(Question question)
	{
		this.question = question;
		return this;
	}
	public Question getQuestion()
	{
		return this.question;
	}

	public Choice setChoice(String choice)
	{
		this.choice = choice;
		return this;
	}
	public String getChoice()
	{
		return this.choice;
	}
}
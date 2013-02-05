package model;

import java.util.List;
import java.util.ArrayList;

import model.Question;

public class Enquete {
	private int id;
	private String name;
	private List<Question> questions;

	public Enquete()
	{
		this.questions = new ArrayList<Question>();
	}
	public Enquete(int id, String name)
	{
		this.id = id;
		this.name = name;
		this.questions = new ArrayList<Question>();
	}

	public Enquete setId(int id)
	{
		this.id = id;
		return this;
	}
	public int getId()
	{
		return this.id;
	}

	public Enquete setName(String name)
	{
		this.name = name;
		return this;
	}
	public String getName()
	{
		return this.name;
	}

	public Enquete addQuestion(Question question)
	{
		this.questions.add(question);
		return this;
	}
	public Question getQuestion(int index)
	{
		return this.questions.get(index);
	}
}
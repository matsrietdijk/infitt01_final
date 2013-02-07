package model;

import java.util.List;
import java.util.ArrayList;

import model.Question;

public class ResultHolder {
	private int id;
	private String question;
	private int type;
	private String percentage;
	private double average;

	public ResultHolder()
	{

	}
	public ResultHolder(int id, String question, int type, String percentage, double average)
	{
		this.id = id;
		this.question = question;
		this.type = type;
		this.percentage = percentage;
		this.average = average;	
	}

	public ResultHolder setId(int id)
	{
		this.id = id;
		return this;
	}
	public int getId()
	{
		return this.id;
	}

	public ResultHolder setQuestion(String question)
	{
		this.question = question;
		return this;
	}
	public String getQuestion()
	{
		return this.question;
	}

	public ResultHolder setType(int type)
	{
		this.type = type;
		return this;
	}
	public int getType()
	{
		return this.type;
	}

	public ResultHolder setPercentage(String percentage)
	{
		this.percentage = percentage;
		return this;
	}
	public String getPercentage()
	{
		return this.percentage;
	}

	public ResultHolder setAverage(double average)
	{
		this.average = average;
		return this;
	}
	public double getAverage()
	{
		return this.average;
	}
}
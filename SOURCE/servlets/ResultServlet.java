package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.EnqueteService;

import model.Enquete;
import model.ResultHolder;

public class ResultServlet extends HttpServlet
{
	private EnqueteService enqueteService;

	public void init() throws ServletException
	{
		this.enqueteService = new EnqueteService();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException
	{
		if (req.getParameter("id") == null) {
			resp.sendRedirect("/final/home");
			return;
		}
		int id = Integer.parseInt(req.getParameter("id"));
		Enquete enquete = this.enqueteService.getEnqueteById(id);
		List<ResultHolder> results = this.enqueteService.getResultsForEnquete(enquete);

		req.setAttribute("enquete", enquete);
		req.setAttribute("results", results);
		getServletContext().getRequestDispatcher("/WEB-INF/pages/result.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException
	{
		getServletContext().getRequestDispatcher("/WEB-INF/pages/home.jsp").forward(req, resp);
	}
}
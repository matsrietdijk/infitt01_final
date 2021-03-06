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

public class AllEnquetesServlet extends HttpServlet
{
	private EnqueteService enqueteService;

	public void init() throws ServletException
	{
		this.enqueteService = new EnqueteService();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException
	{
		String user = req.getUserPrincipal().getName();
		List<Enquete> enquetes = this.enqueteService.getAllEnquetesExcludingFinished(user);
		req.setAttribute("enquetes", enquetes);
		List<Enquete> favorites = this.enqueteService.getFavoritesByUser(user);
		req.setAttribute("favorites", favorites);
		getServletContext().getRequestDispatcher("/WEB-INF/pages/allEnquetes.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException
	{
		getServletContext().getRequestDispatcher("/WEB-INF/pages/home.jsp").forward(req, resp);
	}
}
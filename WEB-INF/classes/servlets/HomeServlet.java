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

public class HomeServlet extends HttpServlet
{
	private EnqueteService enqueteService;

	public void init() throws ServletException
	{
		this.enqueteService = new EnqueteService();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException
	{
		List<Enquete> favorites = this.enqueteService.getFavoritesByUser(req.getUserPrincipal().getName());
		req.setAttribute("favorites", favorites);
		List<Enquete> finished = this.enqueteService.getFinishedByUser(req.getUserPrincipal().getName());
		req.setAttribute("finished", finished);
		getServletContext().getRequestDispatcher("/WEB-INF/pages/home.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException
	{
		List<Enquete> favorites = this.enqueteService.getFavoritesByUser(req.getUserPrincipal().getName());
		req.setAttribute("favorites", favorites);
		List<Enquete> finished = this.enqueteService.getFinishedByUser(req.getUserPrincipal().getName());
		req.setAttribute("finished", finished);
		getServletContext().getRequestDispatcher("/WEB-INF/pages/home.jsp").forward(req, resp);
	}
}
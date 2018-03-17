package com.shoponlineproject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;



@WebServlet(
        name = "HomeServlet",
        value = {"/"}
)
public class HomeServlet extends HttpServlet {
    public HomeServlet() {
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (this.isUserLoggedIn(session)) {
            req.getRequestDispatcher("home.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }

    }

    public boolean isUserLoggedIn(HttpSession session) {
        return session.getAttribute("user") != null;
    }
}

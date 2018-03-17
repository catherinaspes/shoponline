package com.shoponlineproject;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Optional;

@WebServlet(
        name = "LoginServlet",
        value = {"/login"}
)
public class LoginServlet extends HttpServlet {
    private static String BAD_CREDENTIALS_DESCRIPTION = "You entered invalid credentials !";

    public LoginServlet() {
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        Optional<User> userByCredentials = UserRepository.getUserByCredentials(username, password);
        if (userByCredentials.isPresent()) {
            HttpSession session = req.getSession();
            session.setAttribute("user", userByCredentials.get());
        } else {
            req.setAttribute("error", BAD_CREDENTIALS_DESCRIPTION);
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }

        resp.sendRedirect("/home");
    }
}


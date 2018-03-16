package com.shoponlineproject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name="ThanksServlet", value="/thanks")

public class ThanksServlet extends HttpServlet{

    private static List<PersonalData> personalDatas;
    static {
        personalDatas = new ArrayList<>();
    }

    @Override
    protected void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {


        httpServletRequest.getRequestDispatcher("thanks.jsp").forward(httpServletRequest,httpServletResponse);
    }

    @Override
    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String firstname = httpServletRequest.getParameter("firstname");
        String lastname = httpServletRequest.getParameter("lastname");
        String email = httpServletRequest.getParameter("email");
        String number = httpServletRequest.getParameter("number");

        PersonalData personalData = new PersonalData(firstname, lastname,number,email);

        personalDatas.add(personalData);

        httpServletRequest.setAttribute("personalDatas", personalDatas);

    }
}

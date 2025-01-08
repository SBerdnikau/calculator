package by.berdnikov.calculator.servlet;

import by.berdnikov.calculator.model.Calculator;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/index")
public class CalculatorServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String principalAmount = req.getParameter("principalAmount");
        String interest = req.getParameter("interest");
        String years = req.getParameter("years");
        String compoundingPeriod = req.getParameter("compoundingPeriod");

        String error;

        if (principalAmount == null || principalAmount.isBlank() || interest == null || interest.isBlank() ||
                years == null || years.isBlank() || compoundingPeriod == null || compoundingPeriod.isBlank()) {
            error = "Одно или несколько полей, пустые. Попробуйте ещё раз";
            req.setAttribute("error", error);
        }else {
            double result = Calculator.calculateCompoundInterest(Double.parseDouble(principalAmount), (Double.parseDouble(interest) / 100), Integer.parseInt(years), Integer.parseInt(compoundingPeriod));
            req.setAttribute("result", result);
        }

        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}

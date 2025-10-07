package com.parkinglot;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class VehicleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        String vehicleNo = request.getParameter("vehicleNo");
        String owner = request.getParameter("owner");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html><body style='text-align:center;'>");

        if ("entry".equals(action)) {
            out.println("<h2>Vehicle Entry Registered</h2>");
            out.println("<p>Vehicle No: " + vehicleNo + "</p>");
            out.println("<p>Owner: " + owner + "</p>");
        } else if ("exit".equals(action)) {
            out.println("<h2>Vehicle Exit Registered</h2>");
            out.println("<p>Vehicle No: " + vehicleNo + "</p>");
        } else {
            out.println("<h2>Invalid Action</h2>");
        }

        out.println("<br><a href='main.jsp'>Back to Dashboard</a>");
        out.println("</body></html>");
    }
}
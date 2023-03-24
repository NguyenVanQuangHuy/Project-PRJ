/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAL.adminDao;
import DAL.homeDAO;
import Model.Account;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author nguye
 */
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

//        String username = request.getParameter("user");
//        String passworld = request.getParameter("pass");
//        HttpSession session = request.getSession();
//        adminDao ad = new adminDao();
//        ad.loadAccount();
//        
//        System.out.println(username);
//              
//        
//            for (Account account : ad.getList_account()) {
//                if(account.getName().equals(username)&&account.getPassworld().equals(passworld)){
//                   session.setAttribute("acc",account);
//                    response.sendRedirect("homecot");
//                }
//                else{
//                    request.setAttribute("messs","kiem tra lai thong tin dang nhap");
//                    request.getRequestDispatcher("Views/login.jsp").forward(request, response);
//                }
//            }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);
        
        request.getRequestDispatcher("Views/login.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("user");
        String passworld = request.getParameter("pass");
        HttpSession session = request.getSession();
        adminDao ad = new adminDao();
        ad.loadAccount();
        
        System.out.println(username);
        System.out.println(passworld);
        System.out.println(ad.getList_account());
      
        boolean logincheck = true;
        for (Account account : ad.getList_account()) {
            System.out.println((account.getName().equals(username) && account.getPassworld().equals(passworld))+" aaaaaaaa");
            if (account.getName().equals(username) && account.getPassworld().equals(passworld)) {
                session.setAttribute("acc", account);
                logincheck = false;
                response.sendRedirect("homecot");
                return;
            }
        }
        if (logincheck) {
            response.sendRedirect("loginco");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

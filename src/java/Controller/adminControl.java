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
public class adminControl extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet adminControl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet adminControl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        adminDao ad = new adminDao();
        ArrayList<Account> ac = new ArrayList<>();
        ad.loadAccount();
        ac = ad.getList_account();
        ArrayList<Product> pr = new ArrayList<>();
        ad.load_product2();
        pr = ad.getList_prod();
        
        int cate = 0;
        try {
          cate = Integer.parseInt(request.getParameter("ca"));  
        } catch (Exception e) {
        }
        
        
        if (cate == 0) {
            int type = 0;
            int accid = 0;

            try {
                type = Integer.parseInt(request.getParameter("type"));
                accid = Integer.parseInt(request.getParameter("acid"));

            } catch (Exception e) {
            }
             System.out.println(type);
            if (type == 2) {
                ad.updaterole(accid);
                ac = new ArrayList<>();
                ad.loadAccount();
                ac = ad.getList_account();
            } else if (type == 3) {
                ad.deleteAccount(accid);
                ac = new ArrayList<>();
                ad.loadAccount();
                ac = ad.getList_account();
            }

            request.setAttribute("cate", cate);
            request.setAttribute("account", ac);
            request.getRequestDispatcher("Views/admin.jsp").forward(request, response);

        } 
        else if (cate == 1) {
           request.getRequestDispatcher("admin2").forward(request, response); 
        }
        else{
          request.setAttribute("cate", cate);
          request.setAttribute("account", ac);
          request.getRequestDispatcher("Views/admin.jsp").forward(request, response);  
        }
        
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

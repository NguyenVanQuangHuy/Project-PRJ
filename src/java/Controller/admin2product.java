/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAL.adminDao;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author nguye
 */
public class admin2product extends HttpServlet {

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
            out.println("<title>Servlet admin2product</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet admin2product at " + request.getContextPath() + "</h1>");
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
        ArrayList<Product> pr = new ArrayList<>();
        ad.load_product2();
        pr = ad.getList_prod();
        int cate = 1;
        try {
            cate = Integer.parseInt(request.getParameter("ca"));
        } catch (Exception e) {
        }

        if (cate == 1) {
            int type2 = 0;
            int pid = 0;
            try {
                type2 = Integer.parseInt(request.getParameter("type2"));
                pid = Integer.parseInt(request.getParameter("poid"));

            } catch (Exception e) {
            }

            System.out.println(type2);
            System.out.println(pid);
            if (type2 == 1) {
               request.getRequestDispatcher("addproduct").forward(request, response);
            } else if (type2 == 2) {
                Product p = new Product();
                p = ad.getProductbyid(pid);
                request.setAttribute("ifopro", p);
                request.getRequestDispatcher("Views/addproduct.jsp").forward(request, response);
            } else if (type2 == 3) {
                ad.deleteProduct(pid);
                pr = new ArrayList<>();
                ad.load_product2();
                pr = ad.getList_prod();

            }

            request.setAttribute("cate", cate);
            request.setAttribute("product", pr);
            request.getRequestDispatcher("Views/admin.jsp").forward(request, response);
        } else if (cate == 0) {
            request.getRequestDispatcher("admin").forward(request, response);
        } else {
            request.setAttribute("cate", cate);
            request.setAttribute("product", pr);
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

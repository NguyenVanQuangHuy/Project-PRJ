/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAL.adminDao;
import DAL.homeDAO;
import Model.Category;
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
public class updateproduct extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updateproduct</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateproduct at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int product_id = 0;
        int priceproduct = 0;
        int cateid  = 0;
        String nameproduct = "";
        String reviewproduct = "";
        String Categorypro = "";
        String url1 ="";
        String url2 ="";
        String url3 ="";
        homeDAO de = new homeDAO();
        adminDao ad = new adminDao();
        de.load_Category();
        product_id = ad.getnumberProduct()-1;
        ArrayList<Category> cate = de.getList_cate();
        try {
        nameproduct = request.getParameter("proname");
        priceproduct = Integer.parseInt(request.getParameter("proprice"));
        reviewproduct = request.getParameter("proreview");
        Categorypro = request.getParameter("catename");
        url1 = request.getParameter("proimg1");
        url2 = request.getParameter("proimg2");
        url3 = request.getParameter("proimg3"); 
        System.out.println(nameproduct);
            System.out.println(product_id);   
        } catch (Exception e) {
        }
        for (Category category : cate) {
            if(category.getName().equals(Categorypro)){
                cateid = category.getCategory_id();
            }
        }
        ad.updateProduct(reviewproduct, product_id, priceproduct, nameproduct);
        request.setAttribute("mess", "Cập Nhật Thành Công");
        request.getRequestDispatcher("Views/addproduct.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

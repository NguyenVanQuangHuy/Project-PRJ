/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAL.Productdao;
import Model.Account;
import Model.Card;
import Model.Item;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author nguye
 */
public class controlProcess extends HttpServlet {
   
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
            out.println("<title>Servlet controlProcess</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet controlProcess at " + request.getContextPath () + "</h1>");
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
        HttpSession session = request.getSession();
        int iditem = Integer.parseInt(request.getParameter("id"));
        int num = Integer.parseInt(request.getParameter("num"));
        Card card = null;
        Object o = session.getAttribute("card");
        
        
          if(o!= null){
            card = (Card)o;
          } 
          else {
            card = new Card();
          } 
        if(num == -1 && card.getQuantitybyId(iditem)<=1 ){
          card.removeItem(iditem);
        }
        else {
        Productdao pd = new Productdao();
        pd.getProductbyId(iditem);
        Product p = pd.getProducts() ;
        int quantity = 1;
        Item t = new Item(quantity, p);
        card.addItem(t);
        }
        List<Item> list = card.getItems();
          session.setAttribute("card", card);
          session.setAttribute("size", list.size());
          request.getRequestDispatcher("homecot").forward(request, response);
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
        HttpSession session = request.getSession();
        Card card = null;
        Object o = session.getAttribute("card");
        
          if(o!= null){
            card = (Card)o;
          } 
          else {
            card = new Card();
          } 
          int iditem = Integer.parseInt(request.getParameter("id"));
          card.removeItem(iditem);
          List<Item> list = card.getItems();
          session.setAttribute("card", card);
          session.setAttribute("size", list.size());
          request.getRequestDispatcher("homecot").forward(request, response);
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

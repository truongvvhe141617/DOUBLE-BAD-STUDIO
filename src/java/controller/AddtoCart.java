/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.HomeDal;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.User;

/**
 *
 * @author Vuong Van Truong
 */
@WebServlet(name = "AddtoCart", urlPatterns = {"/addtocart"})
public class AddtoCart extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {

            HomeDal hd = new HomeDal();
            HttpSession session = request.getSession();

            User user = (User) session.getAttribute("user");
            int productId = Integer.parseInt(request.getParameter("productId"));
            
            int quantity = hd.getQuantityInCartbyProductId(user.getUserId(), productId);

            Cart p = hd.GetProduct(productId);
//            response.getWriter().println(user.getUserId());
//            response.getWriter().println(productId);
//            response.getWriter().println(quantity);
      
            if (p == null ) {
                quantity = 1;
                hd.addProductInCart(quantity,user.getUserId(), productId);
            } else {
                hd.updateQuantityProductInCart(quantity + 1,user.getUserId(), productId);
            }
//            if (quantity != 0) {
//             hd.updateQuantityProductInCart(user.getUserId(), productId, quantity + 1);
//            } else {
//                quantity = 1;
//                hd.addProductInCart(user.getUserId(), productId, quantity);
//            }
            session.setAttribute("quatity", out);
            request.getRequestDispatcher("cart").forward(request, response);


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
        processRequest(request, response);
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
        processRequest(request, response);
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

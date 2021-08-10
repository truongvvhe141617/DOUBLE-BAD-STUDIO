/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.UserDal;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author Vuong Van Truong
 */
@WebServlet(name = "LoginControl", urlPatterns = {"/login"})
public class LoginControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

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
        String username ="";
        String password ="";
        Cookie[] cookies = null;
        Cookie cookie = null;
        cookies = request.getCookies();
        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                cookie = cookies[i];
                if (cookie.getName().equals("username")) {
                    username = cookie.getValue();
                    request.setAttribute("username1", username);
                }
                
                if (cookie.getName().equals("password")) {
                    password = cookie.getValue();
                    request.setAttribute("password1", password);
                }
               
            
               
            }
        }       
        UserDal ud = new UserDal();
        User user = ud.getUser(username, password);
        HttpSession session = request.getSession();
        if(user != null){
            
            if(user.getRole().equals("HOLD_admin")){
            session.setAttribute("user", user);
            response.sendRedirect("homeAdmin.jsp");
            }else{
                 session.setAttribute("user", user);
                 response.sendRedirect("home");
            }     
        }else{
             response.sendRedirect("login.jsp");
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
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");
        
        
        UserDal ud = new UserDal();
        User user = ud.getUser(username, password);
        HttpSession session = request.getSession();
        if (user != null) {
            if (remember != null) {
                Cookie ck_username = new Cookie("username", username);
                Cookie ck_password = new Cookie("password", password);
                ck_username.setMaxAge(60 * 60 * 24 * 365);
                ck_password.setMaxAge(60 * 60 * 24 * 365);
                response.addCookie(ck_username);
                response.addCookie(ck_password);
                
            }
           
             
            if(user.getRole().equals("HOLD_admin")){
            session.setAttribute("user", user);
            response.sendRedirect("homeAdmin.jsp");
            }else{
                 session.setAttribute("user", user);
                 response.sendRedirect("home");
            }   
         
        }else{
            
            request.setAttribute("message", "Username or password is invalid. Wanna try again?");
            request.getRequestDispatcher("login.jsp").forward(request, response);
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

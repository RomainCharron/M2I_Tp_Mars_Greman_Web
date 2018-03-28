/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.m2i.charron.web.greman_tp_web_mars.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Formation
 */
public class SSapins extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            
            String sapinsType = request.getParameter("sapinsType");
            int sapinsSize =  Integer.parseInt(request.getParameter("sapinsSize")); //request.getParameter("sapinsSize");
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SSapins</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SSapins at " + request.getContextPath() + "</h1>");
            out.println("<br />\n"
            + "<p>" + sapinsType + " " + sapinsSize + "</p>");
            out.println("<p>");
            
            
            switch(sapinsType)
            {
                case "couche":
                    genSapinCouche(out ,sapinsSize);
                    break;
                case "plein":
                    genSapinPlein(out ,sapinsSize);
                    break;
                case "vide":
                    genSapinVide(out ,sapinsSize);
                    break;
                default:
                    out.print("Erreur pas de sap selectioner" );
                    break;
            }
            out.println("</p>");
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

    
    
    
    private static void genSapinPlein(PrintWriter out ,int size)
    {
        boolean siImpaire = size%2 == 1;
        int margeSapin = siImpaire ? (size-1)/2 : size/2; 
        
        out.println(margeSapin + " pour " + size);
        
        for (int i = 0; i <= size; i++) {
            
            for (int r = 0; r < size - i &&  i != 0; r++) {
                out.print("&nbsp;&nbsp;");
            }
            for (int r = 0; r < i - 1; r++) {
                out.print("*");
            }
            if(i != 0) out.print("#");
            for (int r = 0; r < i - 1; r++) {
                out.print("*");
            }
            out.println("<br />");
        }
    }
    private static void genSapinVide(PrintWriter out ,int size)
    {
        boolean siImpaire = size%2 == 1;
        int margeSapin = siImpaire ? (size-1)/2 : size/2; 
        
        out.println(margeSapin + " pour " + size);
        
        for (int i = 0; i <= size; i++) {
            
            for (int r = 0; r < size - i &&  i != 0; r++) {
                out.print("&nbsp;&nbsp;");
            }
            for (int r = 0; r < i - 1; r++) {
                out.print((r == 0 || i == size ? "*" : "&nbsp;&nbsp;"));
                
            }
            if(i != 0) out.print((i == 1 || i == size ? "#" : "&nbsp;&nbsp;"));
            for (int r = 0; r < i - 1; r++) {
                out.print((r == (i - 2) || i == size ? "*" : "&nbsp;&nbsp;"));
            }
            out.println("<br />");
        }
    }
    private static void genSapinCouche(PrintWriter out ,int size)
    {
        boolean siImpaire = size%2 == 1;
        int margeSapin = siImpaire ? (size-1)/2 : size/2; 
        
        out.println(margeSapin + " pour " + size);
        
        for (int i = 0; i < size; i++) {
            for (int r = 0; r < i; r++) {
                out.print("*");
            }
            
            out.println("<br />");
        }
        for (int i = size - 1; i >= 0; i--) {
            for (int r = 0; r <= i; r++) {
                out.print("*");
            }
            out.println("<br />");
        }
    }
}

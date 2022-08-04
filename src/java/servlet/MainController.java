/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.net.URL;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

/**
 *
 * @author Thiep Ngo
 */
public class MainController extends HttpServlet {
    private final Logger log = Logger.getLogger(this.getClass());
    private static final String ERROR = "HomeController";
    private static final String LOGIN = "Login";
    private static final String LOGIN_CONTROLLER = "LoginController";
    private static final String SEARCH = "Search";
    private static final String SEARCH_ADMIN_CONTROLLER = "SearchProductController";
    private static final String ADD = "Add";
    private static final String ADD_PRODUCT_CONTROLLER = "AddProductController";
    private static final String LOGOUT = "Logout";
    private static final String LOGOUT_CONTROLLER = "LogoutController";
    private static final String HOME = "Home";
    private static final String HOME_CONTROLLER = "HomeController";
    private static final String FILTER = "Filter";
    private static final String FILTER_CONTROLLER = "FilterCategoryController";
    private static final String HOME_ADMIN = "HomeAdmin";
    private static final String HOME_ADMIN_CONTROLLER = "HomeAdminController";
    private static final String DELETE = "Delete";
    private static final String DELETE_CONTROLLER = "DeleteProductController";
    private static final String UPDATE = "Update";
    private static final String UPDATE_CONTROLLER = "UpdateProductController";
    private static final String ADD_ITEM_TO_CARD = "AddToCart";
    private static final String ADD_ITEM_TO_CARD_CONTROLLER = "AddToCartController";
    private static final String DETAIL = "Detail";
    private static final String DETAIL_CONTROLLER = "DetailController";
    private static final String CART = "Cart";
    private static final String CART_CONTROLLER = "CartController";
    private static final String DELETE_CART = "DeleteCart";
    private static final String DELETE_CART_CONTROLLER = "DeleteCartController";
    private static final String CHECKOUT = "CheckOut";
    private static final String CHECKOUT_CONTROLLER = "CheckOutController";
    private static final String CREATE = "Register";
    private static final String CREATE_CONTROLLER = "CreateUserController";
    private static final String VERIFY = "Verify";
    private static final String VERIFY_CONTROLLER = "VerifyController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String url = ERROR;
        try {
            URL urlLof4j = this.getClass().getResource("/log4j/Log4j.properties");
            PropertyConfigurator.configure(urlLof4j);
            String action = request.getParameter("action");
            if (null != action) switch (action) {
                case LOGIN:
                    url = LOGIN_CONTROLLER;
                    break;
                case SEARCH:
                    url = SEARCH_ADMIN_CONTROLLER;
                    break;
                case ADD:
                    url = ADD_PRODUCT_CONTROLLER;
                    break;
                case LOGOUT:
                    url = LOGOUT_CONTROLLER;
                    break;
                case HOME:
                    url = HOME_CONTROLLER;
                    break;
                case FILTER:
                    url = FILTER_CONTROLLER;
                    break;
                case HOME_ADMIN:
                    url = HOME_ADMIN_CONTROLLER;
                    break;
                case UPDATE:
                    url = UPDATE_CONTROLLER;
                    break;
                case DELETE:
                    url = DELETE_CONTROLLER;
                    break;
                case ADD_ITEM_TO_CARD:
                    url = ADD_ITEM_TO_CARD_CONTROLLER;
                    break;
                case DETAIL:
                    url = DETAIL_CONTROLLER;
                    break;
                case CART:
                    url = CART_CONTROLLER;
                    break;
                case DELETE_CART:
                    url = DELETE_CART_CONTROLLER;
                    break;
                case CHECKOUT:
                    url = CHECKOUT_CONTROLLER;
                    break;
                case CREATE:
                    url = CREATE_CONTROLLER;
                    break;
                case VERIFY:
                    url = VERIFY_CONTROLLER;
                    break;
                default:
                    break;
            }
        } catch (Exception e) {
            log("Error at MainController" + e.toString());
            log.info(e.getMessage(), e);
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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

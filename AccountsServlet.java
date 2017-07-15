package pe.pageadventures.viewcontrollers;

import pe.pageadventures.models.Account;
import pe.pageadventures.services.HRService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Luis on 10/07/2017.
 */

@WebServlet(name = "AccountsServlet", urlPatterns = "/accounts")
public class AccountsServlet extends HttpServlet {

        // Service Layer access object
        HRService service = new HRService();
        // Action View Paths
        public static String ACCOUNTS_EDIT_URI = "/editAccount.jsp";
        public static String ACCOUNTS_ADD_URI = "/newAccount.jsp";
        public static String ACCOUNTS_INDEX_URI = "/listAccounts.jsp";

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            switch(action) {
                case "update": {
                    Account account = service.getAccountById(request.getParameter("id"));
                    account.setType(request.getParameter("type"));
                    account.setName(request.getParameter("name"));
                    String message = service.updateAccount(account) ?
                            "Update success" :
                            "Error while updating";
                    log(message);
                }
                case "create": {
                    Account account = new Account();
                   // account.setId(Integer.parseInt(request.getParameter(null)));
                    account.setType(request.getParameter("type"));
                    account.setName(request.getParameter("name"));
                    String message = service.createAccount(account) ?
                            "Create success" :
                            "Error while creating";
                    log(message);

                    request.getSession().setAttribute("account", account);


                    }
            }
            RequestDispatcher dispatcher =
                    request.getRequestDispatcher("/RegisterUser.jsp");
            dispatcher.forward(request, response);

        }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            String actionUri;
            switch(action) {
                case "add": {
                    /*actionUri = ACCOUNTS_ADD_URI*/
                    actionUri = "/RegisterAccount.jsp";
                    request.setAttribute("action", "add");
                    break;
                }
                case "edit": {
                    Account account = service.getAccountById(request.getParameter("id"));
                    request.setAttribute("account", account);
                    request.setAttribute("action", "edit");
                    actionUri = ACCOUNTS_EDIT_URI;
                    break;
                }
                default:
                    /*actionUri = ACCOUNTS_INDEX_URI*/
                    actionUri = "/RegisterAccount.jsp";
            }
            RequestDispatcher dispatcher = request.getRequestDispatcher(actionUri);
            dispatcher.forward(request, response);
        }
    }


package pe.adventurepage.viewcontrollers;

/**
 * Created by Erick Rojas on 19/07/2017.
 */

import pe.adventurepage.models.Account;
import pe.adventurepage.models.User;
import pe.adventurepage.services.APService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EnterpriseServlet", urlPatterns = "/enterprise")
public class EnterpriseServlets extends HttpServlet {

    // Service Layer access object
    APService service = new APService();
    // Action View Paths
    public static String ACCOUNTS_EDIT_URI = "/editUser.jsp";
    public static String ACCOUNTS_ADD_URI = "/newUser.jsp";
    public static String ACCOUNTS_INDEX_URI = "/listUsers.jsp";


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        String pag;
        switch(action) {
            case "update": {
                Account account = new Account();

                User user = service.getUserById(request.getParameter("usid"));
                user.setName(request.getParameter("name"));
                user.setLastname(request.getParameter("lastname"));
                user.setPassword(request.getParameter("pass"));
                user.setPhone(Integer.parseInt(request.getParameter("phone")));
                user.setEmail(request.getParameter("email"));
                user.setPhoto(request.getParameter("photo"));
                user.setAccount(account.setId(1));
                String message = service.updateUser(user) ?
                        "Update success" :
                        "Error while updating";
                log(message);
                pag="/MenuEnterprise.jsp";
                break;
            }
            case "create": {

                Account account = new Account();

                // account.setId();
                User user = new User();
                user.setName(request.getParameter("username"));
                user.setLastname(request.getParameter("lastname"));
                user.setPassword(request.getParameter("password"));
                user.setPhone(Integer.parseInt(request.getParameter("phone")));
                user.setEmail(request.getParameter("email"));
                user.setPhoto(request.getParameter("photo"));
                user.setAccount(account.setId(1));
                String message = service.createUser(user) ?
                        "Create success" :
                        "Error while creating";
                log(message);

                pag="/LoginEnterprise.jsp";
                break;
            }
            case "login":{

                String name = request.getParameter("username");
                String pass = request.getParameter("password");
                User user = service.getUserByNamePass(name,pass);

                if (user != null){
                    request.getSession().setAttribute("user", user);
                    pag = "/MenuEnterprise.jsp";}
                else{
                    pag = "/index.jsp";
                }

                break;
            }
            default:
                pag = "/RegisterEnterprise.jsp";

        }
        RequestDispatcher dispatcher =
                request.getRequestDispatcher(pag);
        dispatcher.forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String actionUri;
        switch(action) {
            case "add": {
                    /*actionUri = ACCOUNTS_ADD_URI*/
                actionUri = "/RegisterEnterprise.jsp";
                request.setAttribute("action", "add");
                break;
            }
            case "edit": {
                User user = service.getUserById(request.getParameter("id"));
                request.setAttribute("user", user);
                request.setAttribute("action", "edit");
                actionUri = "/DatosPersonalesEmpresa.jsp";
                break;
            }

            case "logout":{

                request.getSession().removeAttribute("user");
                actionUri="index.jsp";

                break;

            }

            default:
                    /*actionUri = ACCOUNTS_INDEX_URI*/
                actionUri = "/RegistereEnterprise.jsp";
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(actionUri);
        dispatcher.forward(request, response);
    }
}

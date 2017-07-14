package pe.pageadventures.viewcontrollers;

import pe.pageadventures.models.Account;
import pe.pageadventures.models.User;
import pe.pageadventures.services.HRService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.sun.activation.registries.LogSupport.log;

/**
 * Created by Luis on 11/07/2017.
 */
@WebServlet(name = "UsersServlet", urlPatterns = "/users")
public class UsersServlet extends HttpServlet {

    // Service Layer access object
    HRService service = new HRService();
    // Action View Paths
    public static String ACCOUNTS_EDIT_URI = "/editUser.jsp";
    public static String ACCOUNTS_ADD_URI = "/newUser.jsp";
    public static String ACCOUNTS_INDEX_URI = "/listUsers.jsp";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String pag;
        switch(action) {
            case "update": {
                User user = service.getUserById(request.getParameter("id"));
                user.setName(request.getParameter("name"));
                user.setLastname(request.getParameter("lastname"));
                user.setPassword(request.getParameter("password"));
                user.setPhone(Integer.parseInt(request.getParameter("phone")));
                user.setEmail(request.getParameter("email"));
                user.setPhoto(request.getParameter("photo"));
                String message = service.updateUser(user) ?
                        "Update success" :
                        "Error while updating";
                log(message);
            }
            case "create": {
                Account account = new Account();
               // account.setId();
                User user = new User();
                user.setName(request.getParameter("name"));
                user.setLastname(request.getParameter("lastname"));
                user.setPassword(request.getParameter("password"));
                user.setPhone(Integer.parseInt(request.getParameter("phone")));
                user.setEmail(request.getParameter("email"));
                user.setPhoto(request.getParameter("photo"));
                user.setAccount(account);
                String message = service.createUser(user) ?
                        "Create success" :
                        "Error while creating";
                log(message);
            }
            case "login2":{

                String name = request.getParameter("username");
                String pass = request.getParameter("password");
                User user = service.getUserByNamePass(name,pass);

                if (user != null){
                    request.getSession().setAttribute("user", user);
                    pag = "/Menu.jsp";}
                    else{
                    pag = "/index.jsp";
                }

                break;
            }
            default:
                pag = "/RegisterUser.jsp";

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
                actionUri = "/RegisterUser.jsp";
                request.setAttribute("action", "add");
                break;
            }
            case "edit": {
               User user = service.getUserById(request.getParameter("id"));
                request.setAttribute("user", user);
                request.setAttribute("action", "edit");
                actionUri = ACCOUNTS_EDIT_URI;
                break;
            }
            case "login":{
                actionUri = "/Login.jsp";
                request.setAttribute("action", "login");
                break;
            }

            default:
                    /*actionUri = ACCOUNTS_INDEX_URI*/
                actionUri = "/RegisterUser.jsp";
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(actionUri);
        dispatcher.forward(request, response);
    }
}

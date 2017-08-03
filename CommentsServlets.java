package pe.adventurepage.viewcontrollers;

/**
 * Created by Luis on 19/07/2017.
 */

import pe.adventurepage.models.Comment;
import pe.adventurepage.models.Story;
import pe.adventurepage.models.User;
import pe.adventurepage.services.APService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;


@WebServlet(name = "CommentsServlet", urlPatterns = "/comments")
public class CommentsServlets extends HttpServlet {

    // Service Layer access object
    APService service = new APService();
    // Action View Paths
    public static String COMMENTS_EDIT_URI = "/editComment.jsp";
    public static String COMMENTS_ADD_URI = "/newComment.jsp";
    public static String COMMENTS_INDEX_URI = "/Comentarios.jsp";


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        String pag;
        switch(action) {
            case "update": {

            }
            case "create": {
                // account.setId();
                User user = new User();
                Story story = new Story();

                Comment comment = new Comment();
                comment.setDescription(request.getParameter("description"));
                comment.setCreate_at(FechaActual());
                comment.setUser(user.setId(Integer.parseInt(request.getParameter("usid"))));
                comment.setStory(story.setId(Integer.parseInt(request.getParameter("hisid"))));
                String message = service.createComment(comment) ?
                        "Create success" :
                        "Error while creating";
                log(message);

                pag= "/Menu.jsp";
                break;
            }

            default:
                pag = COMMENTS_INDEX_URI;

        }
        RequestDispatcher dispatcher =
                request.getRequestDispatcher(pag);
        dispatcher.forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String actionUri;
        switch(action) {
           

            

            default:
                    /*actionUri = ACCOUNTS_INDEX_URI*/
                actionUri = COMMENTS_INDEX_URI;
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(actionUri);
        dispatcher.forward(request, response);
    }

    public static String FechaActual() {
        Date ahora = new Date();
        SimpleDateFormat formateador = new SimpleDateFormat("dd-MM-yyyy");
        return formateador.format(ahora);
    }
}

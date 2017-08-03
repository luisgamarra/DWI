package pe.adventurepage.viewcontrollers;

import org.omg.CORBA.Request;
import pe.adventurepage.models.*;
import pe.adventurepage.services.APService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "StoriesServlets", urlPatterns = "/stories")
public class StoriesServlets extends HttpServlet {

    // Service Layer access object
    APService service = new APService();
    // Action View Paths
    public static String STORIES_EDIT_URI = "/EditStory.jsp";
    public static String STORIES_ADD_URI = "/NewStory.jsp";
    public static String STORIES_INDEX_URI = "MisHistorias.jsp";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch(action) {

            case "create": {


                User user = new User();
                Place place = new Place();
                Mediacontent mediacontent = new Mediacontent();
                mediacontent.setId(Integer.parseInt(request.getParameter("meid")));
                mediacontent.setName(request.getParameter("foto"));
                mediacontent.setUrl(request.getParameter("url"));
                String messagen = service.createMedia(mediacontent) ?
                        "Create success" :
                        "Error while creating";
                log(messagen);

                Story story = new Story();
                // account.setId(Integer.parseInt(request.getParameter(null)));
                story.setName(request.getParameter("title"));
                story.setDescription(request.getParameter("description"));
                story.setStory_date((FechaActual()));
                story.setUser(user.setId(Integer.parseInt(request.getParameter("usid"))));
                story.setPlace(place.setId(Integer.parseInt(request.getParameter("zona"))));
                story.setMediacontent(mediacontent.setId(Integer.parseInt(request.getParameter("meid"))));

                String message = service.createStory(story) ?
                        "Create success" :
                        "Error while creating";
                log(message);


            }


                 }
        RequestDispatcher dispatcher =
                request.getRequestDispatcher(STORIES_INDEX_URI);
        dispatcher.forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String actionUri;
        switch(action) {
            case "add": {
                    /*actionUri = ACCOUNTS_ADD_URI*/
                actionUri = STORIES_ADD_URI;
                request.setAttribute("action", "add");
                break;
            }



            default:
                    /*actionUri = ACCOUNTS_INDEX_URI*/
                actionUri = STORIES_INDEX_URI;
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


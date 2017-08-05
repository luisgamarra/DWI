package pe.adventurepage.viewcontrollers;

import pe.adventurepage.models.*;
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
            case "update": {

                User user = new User();
                Place place=new Place();
                Mediacontent mediacontent=new Mediacontent();
                Story story = service.getStoryById(request.getParameter("idh"));
                story.setName(request.getParameter("title"));
                story.setDescription(request.getParameter("description"));
               /* story.setStory_date(("2017-01-01"));*/
                story.setUser(user.setId(1));
                story.setPlace(place.setId(1));
                story.setMediacontent(mediacontent.setId(1));
                String message = service.updateStory(story) ?
                        "Update success" :
                        "Error while updating";
                log(message);

                /*Mediacontent mediacontent = service.getMediaById(Integer.parseInt(request.getParameter("idh")));
                mediacontent.setName(request.getParameter("foto"));
                mediacontent.setUrl(request.getParameter("url"));
                String messages = service.updateMedia(mediacontent)?
                        "update success":
                        "Error while updating";
                log(messages);*/
                break;
            }
           /*case "delete":{

               Story story = service.getStoryById(request.getParameter("idhis"));
               String message = service.deleteStory(story) ?
                       "delete success" :
                       "Error while deleting";
               log(message);

            }*/
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

                break;

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
            case "edit": {
                Story story = service.getStoryById(request.getParameter("idh"));
                request.setAttribute("story", story);
                request.setAttribute("action", "edit");
                actionUri = STORIES_EDIT_URI;
                break;
            }

            case "list": {
                Story story = service.getStoryById(Integer.parseInt(request.getParameter("id")));
                request.setAttribute("story", story);
                request.setAttribute("action", "list");
                actionUri = "/VerHistoria.jsp";
                break;
            }

            case "delete": {

                Comment comment = new Comment();
                comment.setId(Integer.parseInt(request.getParameter("idh")));
                service.deleteCommentsbyStoryId(comment);

                Story story = new Story();
                story.setId(Integer.parseInt(request.getParameter("idh")));
                service.deleteStory(story);

                    Mediacontent mediacontent = new Mediacontent();
                    mediacontent.setId(Integer.parseInt(request.getParameter("idh")));
                    String message2 = service.deleleMedia(mediacontent) ?
                           "delete success" :
                            "Error while deleting";
                    log(message2);

                actionUri = "/MisHistorias.jsp";

                break;
            }
            case "list2": {
                Story story = service.getStoryById(Integer.parseInt(request.getParameter("id")));
                request.setAttribute("story", story);
                request.setAttribute("action", "list2");
                actionUri = "/Comentarios.jsp";
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


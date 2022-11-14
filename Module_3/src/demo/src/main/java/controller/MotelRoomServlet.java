package controller;

import model.MotelRoom;
import service.IMotelRoomService;
import service.impl.MotelRoomService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MotelRoomServlet", urlPatterns = "/motel")
public class MotelRoomServlet extends HttpServlet {
    private  IMotelRoomService iMotelRoomService = new MotelRoomService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                showFormAdd(request, response);
                break;
            case "edit":
                showFormEdit(request, response);
                break;
            default:
                showList(request, response);
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        List<MotelRoom> motelRoomList = iMotelRoomService.findAllRoom();
        request.setAttribute("customerList", motelRoomList);
        try {
            request.getRequestDispatcher("view/list.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(motelRoomList);
    }

    private void showFormEdit(HttpServletRequest request, HttpServletResponse response) {
    }

    private void showFormAdd(HttpServletRequest request, HttpServletResponse response) {
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                showFormAdd(request, response);
                break;
            case "edit":
                showFormEdit(request, response);
                break;
            default:
                showList(request, response);
        }
    }

}

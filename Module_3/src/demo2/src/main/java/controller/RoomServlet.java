package controller;

import model.Room;
import service.IRoomService;
import service.RoomService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "RoomServlet", urlPatterns = "/room")
public class RoomServlet extends HttpServlet {
    private IRoomService roomService = new RoomService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "new":
                showFormAdd(request, response);
                break;
            case "edit":
                showFormEdit(request, response);
                break;
            case "search":
                search(request, response);
                break;
            default:
                displayRoomList(request, response);
        }
    }

    private void displayRoomList(HttpServletRequest request, HttpServletResponse response) {
        List<Room> roomList = roomService.roomAllList();
        request.setAttribute("roomList", roomList);
        try {
            request.getRequestDispatcher("view/list.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormEdit(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Room room  = roomService.findById(id);
        try {
            request.setAttribute("room",room);
            request.getRequestDispatcher("view/editForm.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormAdd(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/addForm.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "add":
                addRoom(request, response);
                break;
            case "delete":
                deleteRoom(request, response);
                break;
            case "search":
                search(request, response);
                break;
            case "update":
                update(request, response);
                break;
        }
    }

    private void update(HttpServletRequest request, HttpServletResponse response) {
int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String phoneNumber = request.getParameter("phoneNumber");
        String startDay = request.getParameter("ngayBatDau");
        String payId = request.getParameter("thanhToanId");

        Room room = new Room(id, name, phoneNumber, startDay, payId);
        roomService.edit(room);
        try {
            request.getRequestDispatcher("view/editForm.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
//        displayRoomList(request,response);
    }

    private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Room> roomList = roomService.roomAllList();
        List<Room> roomSearchList = new ArrayList<>();
        String searchInput = request.getParameter("search");
        for (int i = 0; i < roomList.size(); i++) {
            if (roomList.get(i).getName().contains(searchInput) || roomList.get(i).getPhoneNumber().equals(searchInput)) {
                roomSearchList.add(roomList.get(i));
            }
        }
        roomList = roomSearchList;

        request.setAttribute("roomList", roomList);

        request.getRequestDispatcher("view/list.jsp").forward(request, response);

    }

    private void addRoom(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String phoneNumber = request.getParameter("phoneNumber");
        String startDay = request.getParameter("ngayBatDau");
        String payId = request.getParameter("thanhToanId");

        Room room = new Room(name, phoneNumber, startDay, payId);
        roomService.add(room);
        try {
            request.getRequestDispatcher("view/addForm.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void deleteRoom(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("deleteId"));
        boolean check = false;
        check = roomService.deleteRoom(id);
        String message = "Không xóa được";
        if (check) {
            message = "Xóa nhân viên thành công";
        }
        request.setAttribute("message", message);
        request.setAttribute("check", check);
        displayRoomList(request, response);

    }
}

package controller;

import model.Facility;
import service.FacilityService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "FacilityServlet", urlPatterns = "/facility")
public class FacilityServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private FacilityService facilityService;

    public void init() {
        facilityService = new FacilityService();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        try {
            switch (action) {
                case "create":
                    showNewForm(request, response);
                    break;
                case "delete":
                    deleteFacility(request, response);
                    break;
                case "insert":
                    insertFacility(request,response);
                    break;
                case "update":
                    updateFacility(request,response);
                    break;
                default:
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        try {
            switch (action) {

                case "edit":
                    showEditForm(request, response);
                    break;
                case "insert":
                    insertFacility(request,response);
                    break;
                default:
                    listFacility(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }


    }


    private void listFacility(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Facility> listFacility = facilityService.selectAllFacility();
        request.setAttribute("listFacility", listFacility);
        RequestDispatcher dispatcher = request.getRequestDispatcher("facility_view/list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("facility_view/create.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Facility existingFacility = facilityService.selectFacility(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("facility_view/edit.jsp");
        request.setAttribute("user", existingFacility);
        dispatcher.forward(request, response);

    }

    private void insertFacility(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("max_people"));
        int rendTypeId = Integer.parseInt(request.getParameter("rend_type_id"));
        int facilityTypeId = Integer.parseInt(request.getParameter("facility_type_id"));
        String standardRoom = request.getParameter("standard_room");
        String descriptionOther = request.getParameter("description_other_convenience");
        double poolArea = Double.parseDouble(request.getParameter("pool_area"));
        int numberOfFloors = Integer.parseInt(request.getParameter("number_of_floors"));
        String facilityFree =request.getParameter("facility_free");
        Facility facility = new Facility(name,area,cost,maxPeople,rendTypeId,facilityTypeId,standardRoom,descriptionOther,poolArea,numberOfFloors,facilityFree);
        facilityService.insertFacility(facility);
        RequestDispatcher dispatcher = request.getRequestDispatcher("facility_view/create.jsp");
        dispatcher.forward(request, response);
    }

    private void updateFacility(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("max_people"));
        int rendTypeId = Integer.parseInt(request.getParameter("rend_type_id"));
        int facilityTypeId = Integer.parseInt(request.getParameter("facility_type_id"));
        String standardRoom = request.getParameter("standard_room");
        String descriptionOther = request.getParameter("description_other_convenience");
        double poolArea = Double.parseDouble(request.getParameter("pool_area"));
        int numberOfFloors = Integer.parseInt(request.getParameter("number_of_floors"));
        String facilityFree =request.getParameter("facility_free");
        Facility book = new Facility(name,area,cost,maxPeople,rendTypeId,facilityTypeId,standardRoom,descriptionOther,poolArea,numberOfFloors,facilityFree);
        facilityService.updateFacility(book);
        RequestDispatcher dispatcher = request.getRequestDispatcher("facility_view/edit.jsp");
        dispatcher.forward(request, response);
    }

    private void deleteFacility(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        facilityService.deleteFacility(id);

        List<Facility> listFacility = facilityService.selectAllFacility();
        request.setAttribute("listFacility", listFacility);
        RequestDispatcher dispatcher = request.getRequestDispatcher("facility_view/list.jsp");
        dispatcher.forward(request, response);
    }
    }




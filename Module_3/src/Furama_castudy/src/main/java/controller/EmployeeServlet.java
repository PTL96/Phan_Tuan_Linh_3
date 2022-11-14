package controller;

import model.Employee;
import service.IEmployeeService;
import service.impl.EmployeeService;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EmployeeServlet", urlPatterns ="/employee")
public class EmployeeServlet extends HttpServlet {
    IEmployeeService iEmployeeService = new EmployeeService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {

            case "add":
                addEmployee(request, response);
                break;
            case "delete":
                deleteEmployee(request,response);
                break;
            default:
                listEmployee(request, response);
                break;

        }
    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("deleteId"));
        boolean check = false;
        check = iEmployeeService.deleteEmployee(id);
        String message = "Không xóa được";
        if (check) {
            message = "Xóa nhân viên thành công";
        }
        request.setAttribute("message", message);
        request.setAttribute("check", check);
        listEmployee(request, response);

    }



    private void addEmployee(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String dateOfBirth = request.getParameter("day_of_birth");
        String idCard = request.getParameter("id_card");
        double salary = Double.parseDouble(request.getParameter("salary"));
        String phone = request.getParameter("phone_number");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int position = Integer.parseInt(request.getParameter("position_id"));
        int education = Integer.parseInt(request.getParameter("education_degree_id"));
       int division = Integer.parseInt(request.getParameter("division_id"));
        Employee employee = new Employee(name,dateOfBirth,idCard,salary,phone,email,address,position,education,division);
        iEmployeeService.addEmployee(employee);
        try {
            request.getRequestDispatcher("view/employee/create.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {

            case "create":
                displayForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;

            default:
                listEmployee(request, response);
                break;

        }


    }

    private void listEmployee(HttpServletRequest request, HttpServletResponse response) {
        List<Employee> employeeList = this.iEmployeeService.selectAll();
        request.setAttribute("employeeList",employeeList);
        try {
            request.getRequestDispatcher("view/employee/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
    }

    private void displayForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/employee/create.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}

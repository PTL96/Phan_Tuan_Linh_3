package controller;

import model.customer.Customer;
import service.ICustomerService;
import service.ICustomerTypeService;
import service.impl.CustomerService;
import service.impl.CustomerTypeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    ICustomerService customerService = new CustomerService();
    private ICustomerTypeService iCustomerTypeServicec = new CustomerTypeService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {

            case "add":
                addCustomer(request,response);
                break;
            case "update":
                updateCustomer(request,response);
                break;
            case "delete":
                deleteCustomer(request, response);
                break;
            case "search":
                searchCustomer(request, response);
                break;
            default:
                listCustomer(request, response);
                break;
        }
    }

    private void addCustomer(HttpServletRequest request, HttpServletResponse response) {
        String customerType = request.getParameter("customer_type_id");
        String name = request.getParameter("name");
        String dateOfBirth = request.getParameter("day_of_birth");
        String gender = request.getParameter("gender");
        String idCard = request.getParameter("id_card");
        String phone = request.getParameter("phone_number");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(customerType, name,dateOfBirth, gender, idCard, phone, email, address);
        customerService.addCustomer(customer);
        try {
            request.getRequestDispatcher("view/customer/create.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = customerService.findById(id);
        customer.setTypeId(Integer.parseInt(request.getParameter("customer_type_id")));
        customer.setName(request.getParameter("name"));
        customer.setDayOfBirth(request.getParameter("day_of_birth"));
        customer.setGender(request.getParameter("gender"));
        customer.setIdCard(request.getParameter("id_card"));
        customer.setPhoneNumber(request.getParameter("phone_number"));
        customer.setEmail(request.getParameter("email"));
        customer.setAddress(request.getParameter("address"));
        boolean checkEdit = customerService.updateCustomer(id, customer);
        String mess;
        if (checkEdit){
            mess= "Chỉnh sửa thành công";
        }else {
            mess = "Chỉnh sửa không thành công";
        }
        request.setAttribute("mess", mess);
        listCustomer(request, response);
        try {
            request.getRequestDispatcher("view/customer/edit.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void searchCustomer(HttpServletRequest request, HttpServletResponse response) {
        String name  = request.getParameter("nameSearch");
        List<Customer> customerList = customerService.searchCustomer(name);
        request.setAttribute("customerList",customerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/list.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    //METHOD: GET

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {

            case "create":
                addFormCustomer(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;

            default:
                listCustomer(request, response);
                break;

        }

    }

    private void listCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = this.customerService.selectAll();
        request.setAttribute("customerList",customerList);
        try {
            request.getRequestDispatcher("/view/customer/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("deleteId"));
        boolean check = false;
        check = customerService.deleteCustomer(id);
        String message = "Không xóa được";
        if (check) {
            message = "Xóa nhân viên thành công";
        }
        request.setAttribute("message", message);
        request.setAttribute("check", check);
//        listCustomer(request, response);

    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer  =customerService.findById(id);
        try {
            request.setAttribute("customer",customer);
            request.getRequestDispatcher("view/customer/edit.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void addFormCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/create.jsp");
        dispatcher.forward(request,response);

    }

    }


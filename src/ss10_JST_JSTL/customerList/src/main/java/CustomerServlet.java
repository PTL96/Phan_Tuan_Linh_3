import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    private static final List<Customer> customerList = new ArrayList<>();
    static {
        customerList.add(new Customer("Mai Văn Hoàng","1983-08-20","Hà Nội","https://studiochupanhdep.com/Upload/Images/anh-chan-dung-nam.jpeg"));
        customerList.add(new Customer("Nguyễn Văn Nam","1983-08-21","Bắc Giang","https://haycafe.vn/wp-content/uploads/2022/03/Anh-chan-dung-nam.jpg"));
        customerList.add(new Customer("Nguyễn Thái Hoàng","1983-08-22","Nam Định","https://lavenderstudio.com.vn/wp-content/uploads/2019/10/gia-chup-hinh-chan-dung-ca-nhan-tp-hcm-01.jpg"));
        customerList.add(new Customer("Trần Đăng Khoa","1983-08-23","Hà Tây","https://dangthien.com/wp-content/uploads/2017/06/chup-anh-chan-dung-co-ban-1.jpg"));
        customerList.add(new Customer("Nguyễn Đình Thi","1983-08-24","Hà Nội","https://camlo5.com/data/2022/01/anh-chan-dung-nam.jpg"));
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setAttribute("customerList",customerList);
request.getRequestDispatcher("list.jsp").forward(request,response);
    }
}

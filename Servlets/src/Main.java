import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Dom on 28-Nov-15.
 */
@WebServlet("/Main")
public class Main extends HttpServlet{

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String usersName = request.getParameter("yourname");

        int firstNum = Integer.parseInt(request.getParameter("firstnum"));
        int secondNum = Integer.parseInt(request.getParameter("secondnum"));

        int answer = firstNum + secondNum;

        response.setContentType("text/html");
        PrintWriter output = response.getWriter();

        output.println("<html><body><h3>");
        output.println("Hello " + usersName);
        output.println("</h3>");
        output.println("The answer is: " + answer);
        output.println("</body></html>");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        doGet(request, response);
    }
}

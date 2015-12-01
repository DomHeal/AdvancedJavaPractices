import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
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

    private Cookie myCookie;
    private PrintWriter output;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        output = response.getWriter();
        output.println("<html><body><h3>");

        if (myCookie != null){
            if (myCookie.getValue().equals(request.getParameter("yourname")))
            output.println("Welcome back " + myCookie.getValue());
        } else {
            String usersName = request.getParameter("yourname");
            myCookie = new Cookie("Name", usersName);
            // Set Cookie Lifetime 24 hours
            myCookie.setMaxAge(60+60+24);
            output.println("Hello " + usersName);
        }

        int firstNum = Integer.parseInt(request.getParameter("firstnum"));
        int secondNum = Integer.parseInt(request.getParameter("secondnum"));

        int answer = firstNum + secondNum;

        response.setContentType("text/html");

        output.println("</h3>");
        output.println("The answer is: " + answer);
        output.println("</body></html>");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        doGet(request, response);
    }
}

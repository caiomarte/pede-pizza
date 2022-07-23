package servlet;

import java.io.*;
import java.text.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author Caio Marte
 */
@WebServlet(name = "Pedir", urlPatterns = {"/Pedir"})
public class Pedir extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StringBuffer buf = new StringBuffer();
        PrintWriter responseOutput = response.getWriter();
        
        File pedidos = new File("pedidos.txt");
                
        String sabor = request.getParameter("sabor");
        String massa = request.getParameter("massa");
        String nome = request.getParameter("nome");
        String endereco = request.getParameter("endereco");
        
        String pedido[] = {"Sabor: " + sabor, "Massa: " + massa, "Nome: " + nome, "Endereço: " + endereco};
        buf.append("<html>\n");
        
        try {
            ObjectOutputStream registro = new ObjectOutputStream(new FileOutputStream(pedidos));
            registro.writeObject(pedido);
            registro.flush();
            registro.close();
            buf.append("<head><title>Sucesso</title></head>\n");
            buf.append("<body><h1>Sucesso</h1>\n");
            buf.append("<p>Aquecendo o forno de pizza...</p>\n");
        } catch(Throwable e) {
            buf.append("<head><title>Falha</title></head>\n");
            buf.append("<body><h1>Falha</h1>\n");
            buf.append("<p>Não conseguimos realizar seu pedido:</p>\n");
            buf.append(e);
            buf.append("\n");
        } finally {
            buf.append("</body></html>");
            responseOutput.println(buf.toString());
            responseOutput.close();
        }
    }
}

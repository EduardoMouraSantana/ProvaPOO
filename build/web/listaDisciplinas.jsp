<%@page import="br.edu.fatecpg.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Disciplina disciplina = null;
    try {
        disciplina = (Disciplina) application.getAttribute("disciplina");
    } catch (Exception e) {
        out.print(e);
    }

    if (disciplina != null) {
%>

<!DOCTYPE html>
<html>
    <%
        for (int i = 0; i <= disciplina.getList().size(); i++) {
            try {
                Float nota = Float.parseFloat(request.getParameter("nome" + i));
                disciplina.getList().get(i).setNota(nota);
                application.setAttribute("disciplina", disciplina);
            } catch (Exception e) {
                continue;
            }
            application.setAttribute("disciplina", disciplina);
        }

    %>
    <head>
        <%@include file="WEB-INF/jspf/css.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prova POO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jsp" %>
        <form>
            <table class="table table-dark table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Disciplina</th>
                        <th>Ementa</th>
                        <th>Ciclo</th>
                        <th>Nota</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i <= disciplina.getList().size(); i++) {%>
                    <tr>    
                        <td><%=i%></td>
                        <td><%=disciplina.getList().get(i).getNome()%></td>
                        <td><%=disciplina.getList().get(i).getEmenta()%></td>
                        <td><%=disciplina.getList().get(i).getCiclo()%></td>
                        <td><input type="text" name="nome<%=i%>" value="<%=disciplina.getList().get(i).getNota()%>"></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" nome="" value="Atualizar Dados">

        </form>
    </body>
</html>

<%@page import="br.edu.fatecpg.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    Disciplina disciplina = new Disciplina();
    Disciplina ING = new Disciplina("ingles", "Estudo da lingua inglesa", 4);
    Disciplina POO = new Disciplina("POO", "ProgramaÃ§Ã£o orientada a objeto", 5);
    Disciplina ENGS3 = new Disciplina("ENG SOFTWARE", "Estudo de engenharia de software", 4);
    Disciplina LP4 = new Disciplina("Linguagem de programaÃ§Ã£o", "Linguagem de programaÃ§Ã£o web PHP", 2);
    Disciplina TG = new Disciplina("Metodologia", "Metodologia da pesquisa cientifica tecnolÃ³gica", 5);
    Disciplina BD = new Disciplina("Banco de dados", "Teoria de banco de dados", 4);
    Disciplina SO = new Disciplina("Sistemas Operacionais", "Estudo sobre o funcionamento de diferentes sistemas operacionais", 4);
    
    disciplina.setDisciplinas(ING);
    disciplina.setDisciplinas(POO);
    disciplina.setDisciplinas(ENGS3);
    disciplina.setDisciplinas(LP4);
    disciplina.setDisciplinas(TG);
    disciplina.setDisciplinas(BD);
    disciplina.setDisciplinas(SO);
    
    application.setAttribute("disciplina", disciplina);
%>
<html>
    <head>
        <%@include file="WEB-INF/jspf/css.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prova POO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jsp" %>]
        <div class="texto" >
            Nome: Eduardo Moura Santana <br>
            RA: 1290481923057 <br>
            Número de Disciplinas:   <%=disciplina.getList().size() %> 
        </div>
    </body>
</html>

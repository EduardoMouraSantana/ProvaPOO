<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand font-weight-bold mr-0" href="index.jsp">Prova POO</a>
    <button class="navbar-toggler" 
      type="button" id="hamburger" 
      data-toggle="collapse"
      data-target="#menuHamburguer" 
      aria-controls="navbarSupportedContent" 
      aria-expanded="false"
      aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="menuHamburguer">
      <!-- Left -->
      <ul class="navbar-nav mr-auto"></ul>

      <!-- Right -->
      <ul class="navbar-nav">
        <li class="nav-item mr-3">
          <a class="nav-link" href="index.jsp">Home</a>
        </li>
        
        <li class="nav-item mr-3">
          <a class="nav-link" href="sobre.jsp">Sobre</a>
        </li>
        
        <li class="nav-item mr-3">
          <a class="nav-link" href="listaDisciplinas.jsp">Minhas Disciplinas</a>
        </li>
        
      </ul>
    </div>
  </div>
</nav>

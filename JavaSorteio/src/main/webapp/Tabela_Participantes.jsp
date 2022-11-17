<%--
  Created by IntelliJ IDEA.
  User: Guilh
  Date: 22/06/2022
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ page import="java.util.Collection, com.example.sorteiobeca.Classes.Participante"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
            crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="icon" href="fogueira.png">
    <title>Tabela Participante</title>
</head>

<body style="background-image: url(listaParticipantes.png);">
<div class="btn-group">
    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
            data-bs-toggle="dropdown" aria-expanded="false">
        Menu
    </button>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <li><a class="dropdown-item" href="/SorteioBeca/">Sorteio</a></li>
        <li><a class="dropdown-item" href="ListaParticipantes">Lista de Participantes</a></li>
        <li><a class="dropdown-item" href="Tela_Forms">Adicionar Participantes</a></li>
    </ul>
</div>

<form>

<br>
    <br>
    <br>
<div class="lista-Participante">
    <ul>

    <%
        Collection<Participante> participantes = (Collection<Participante>) request.getAttribute("participantesSorteio");
        for(Participante participante : participantes) {
    %>
        <li><%= participante.getNome() %></li>
    <%}%>


    </ul>
</div>
</form>
</body>

<script src="script.js"></script>

</html>
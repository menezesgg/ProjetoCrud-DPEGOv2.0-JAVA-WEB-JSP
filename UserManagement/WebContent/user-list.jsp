<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>DEFENSORIA | PÚBLICA GO</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #343A40">
                    <div>
                        <a href="index.jsp" class="navbar-brand"> Voltar </a>
                    </div>

                </nav>
            </header>
            <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">

                    <h3 class="text-center">Assistidos Cadastrados:</h3>

                    <hr>
                    <div class="container text-left">

                        <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Adicionar
					Novo</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nome</th>
                                <th>CPF</th>
                                <th>Nascimento</th>
                                <th>Gerenciamento</th>
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach var="user" items="${listUser}">

                                <tr>
                                    <td>
                                        <c:out value="${user.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.nome}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.cpf}" />
                                    </td>
                                    <td>
                                        <c:out value="${user.nascimento}" />
                                    </td>
                                    <td><a href="edit?id=<c:out value='${user.id}' />">Editar</a> 
                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     <a href="atender?id=<c:out value='${user.id}' />">Atender</a>
                                    
                                </tr>
                            </c:forEach>

                        </tbody>

                    </table>
                </div>
            </div>
        </body>

        </html>
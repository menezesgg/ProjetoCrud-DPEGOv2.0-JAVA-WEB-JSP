<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>DEFENSORIA | PÚBLICA GO</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <script type="text/javascript" src="../js/script.js" defer></script>

            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>


            <link rel="sortcut icon" href="https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fb%2Fbe%2FFlag_of_Goi%25C3%25A1s.svg%2F1200px-Flag_of_Goi%25C3%25A1s.svg.png&imgrefurl=https%3A%2F%2Fpt.wikipedia.org%2Fwiki%2FBandeira_de_Goi%25C3%25A1s&tbnid=CDDt_QSGA9bjnM&vet=12ahUKEwiyh5H2ouvxAhVXKrkGHYXxD7MQMygAegUIARC3AQ..i&docid=hjpMhHl_z-h9KM&w=1200&h=840&q=bandeira%20do%20goi%C3%A1s&ved=2ahUKEwiyh5H2ouvxAhVXKrkGHYXxD7MQMygAegUIARC3AQ"
                type="image/gif" />
        </head>
        <style>
            * {
                margin: 0;
                padding: 0;
            }
            
            body,
            html {
                height: 100%;
            }
            
            .clear {
                clear: both;
            }
            
            .cadastro h1 {
                color: #0f004a;
                font-size: 22px;
                padding: 10px;
                margin-bottom: -15px;
            }
            
            p {
                text-align: left;
                font-size: 22px;
                color: #070124;
                padding: 5px;
            }
            
            .cadastro {
                width: 75%;
                height: 750px;
                border: 1px solid #e0dfda;
                padding: 10px;
                margin-left: 170px;
                border-radius: 10px;
            }
            
            form input,
            form select {
                width: 85%;
                height: 35px;
                padding: 2px;
                border-radius: 5px;
                margin-left: 55px;
                border: 1px solid #e0dfda;
                box-shadow: 2px 2px 2px #9e9d9b;
            }
            
            form input[type=textarea] {
                width: 85%;
                height: 305px;
                padding: 2px;
                border-radius: 5px;
                margin-left: 55px;
                border: 1px solid #e0dfda;
                box-shadow: 2px 2px 2px #9e9d9b;
            }
            
            form input[type=submit] {
                width: 85%;
                height: 38px;
                padding: 2px;
                border-radius: 5px;
                margin-left: 55px;
                border: 1px solid #02521a;
                background-color: #02521a;
                box-shadow: 2px 1px 1px #9e9d9b;
                color: white;
                font-size: 20px;
            }
            
            form input[type=submit]:hover {
                background-color: #006b20;
            }
            
            form .cadastro label {
                font-size: 17px;
                margin-left: 55px;
                margin-bottom: -1px;
            }
            
            .linha {
                border-top: 1px solid #e0dfda;
                margin-top: 15px;
                width: 95%;
                margin-left: 10px;
            }
            
            .center {
                width: 20%;
                margin-left: -130px;
            }
            
            #footer p {
                text-align: center;
                font-size: 15px;
            }
            
            .ass {
                margin-top: -80px;
            }
        </style>

        <body>
            <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                <a class="navbar-brand" href="index.jsp">Defensoria Pública</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
  <span class="navbar-toggler-icon"></span>
</button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="user-form.jsp">Cadastrados</a>
                        </li>

                    </ul>
                </div>
            </nav>

            </ul>

            </div>
            </nav>
            <br>

            <br>

            <br>



            <div>
                <div class="card ass">
                    <div class="card-body">
                        <center>

                            <h2>Situação do Atendimento: </h2>


                        </center>
                        <form action="insertAtendimento" method="post">
                            <div class="cadastro">
                                <h1>Atendimento: </h1>


                                <input type="hidden" name="id" value="<c:out value='${user.id}' />" /><br>
                                <label for="">Nome</label><br>
                                <input type="text" disabled value="<c:out value='${user.nome}' />" required="required">
                                <br>
                                <label for="">CPF: </label><br>
                                <input type="text" disabled value="<c:out value='${user.cpf}' />">
                                <br>
                                <label>Tipo:</label><br>
                                <input type="text" disabled value="<c:out value='${user.tipo}' />" required="required">
                                <br>

                                <label>Defensor:</label><br>
                                <input type="text" value="<c:out value='${Atendimento.defensor}' />" id="defensor" name="defensor" required="required">
                                <br>
                                <label for="">Resumo:</label><br>
                                <input type="textarea" value="<c:out value='${Atendimento.resumo}' />" id="resumo" name="resumo" required="required">
                                <br>
                                <br>

                                <input type="submit" value="Salvar e Gerar o Relatório">
                                <br>
                                <a href="relatorio"> Gerar Relatório </a>

                            </div>
                        </form>
                    </div>
                    <div id="footer">
                        <p>Defensoria Pública-GO © - Todos os Direitos Reservados.</p>
                        <br>
                    </div>
                </div>
        </body>

        </html>
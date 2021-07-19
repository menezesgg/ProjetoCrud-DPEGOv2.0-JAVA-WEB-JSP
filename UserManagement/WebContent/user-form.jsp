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
                margin-bottom: 15px;
            }
            
            .voltar img {
                width: 30px;
                padding: 10px;
            }
            
            p {
                text-align: left;
                font-size: 22px;
                color: #070124;
                padding: 5px;
            }
            
            .cadastro {
                width: 75%;
                height: 1600px;
                border: 1px solid #e0dfda;
                padding: 10px;
                margin-top: -20px;
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
            
            #footers p {
                text-align: center;
                font-size: 15px;
            }
            
            .ass {
                margin-top: -80px;
            }
        </style>

        <script>
            $("#cep").focusout(function() {
                $.ajax({

                    url: 'https://viacep.com.br/ws/' + $(this).val() + '/json/unicode/',

                    dataType: 'json',

                    success: function(resposta) {

                        $("#logradouro").val(resposta.logradouro);
                        $("#complemento").val(resposta.complemento);
                        $("#bairro").val(resposta.bairro);
                        $("#cidade").val(resposta.localidade);
                        $("#uf").val(resposta.uf);
                        $("#numero").focus();
                    }
                });
            });
        </script>

        <body>
            <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                <a class="navbar-brand" href="index.jsp">Defensoria Pública</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
  <span class="navbar-toggler-icon"></span>
</button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="list">Cadastrados</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" target="_blank" href="https://buscacepinter.correios.com.br/app/endereco/index.php">Buscar CEP</a>
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
                        <c:if test="${user != null}">
                            <form action="update" method="post">
                        </c:if>
                        <c:if test="${user == null}">
                            <form action="insert" method="post">
                        </c:if>
                        <center>
                            <caption>
                                <h2>
                                    <c:if test="${user != null}">
                                        Gerenciar Cadastro de Assistidos
                                    </c:if>
                                    <c:if test="${user == null}">
                                        Cadastro de Assistidos
                                    </c:if>
                                </h2>
                            </caption>
                        </center>

                        <c:if test="${user != null}">
                            <input type="hidden" name="id" value="<c:out value='${user.id}' />" /><br>
                        </c:if>

                        <br>
                        <div class="cadastro">
                            <h1>Dados Básicos</h1>




                            <label for="">Nome</label><br>
                            <input type="text" value="<c:out value='${user.nome}' />" id="nome" name="nome" required="required">
                            <br>
                            <label for="">CPF: </label><br>
                            <input type="text" value="<c:out value='${user.cpf}' />" name="cpf">
                            <br>
                            <label>Data de nascimento:</label><br>
                            <input type="text" value="<c:out value='${user.nascimento}' />" id="nascimento" name="nascimento" required="required">
                            <br>
                            <label for="">Nome da Mãe:</label><br>
                            <input type="text" value="<c:out value='${user.mae}' />" id="mae" name="mae" required="required">
                            <br>
                            <label for="">Nome da Pai:</label><br>
                            <input type="text" value="<c:out value='${user.pai}' />" id="pai" name="pai" required="required">
                            <br>
                            <label for="">Gênero:</label><br>
                            <input type="text" value="<c:out value='${user.genero}' />" id="genero" name="genero" required="required">
                            <br><label for="">Telefone:</label><br>
                            <input type="text" value="<c:out value='${user.telefone}' />" id="telefone" name="telefone" required="required">
                            <br>
                            <label for="">Celular:</label><br>
                            <input type="text" value="<c:out value='${user.celular}' />" id="celular" name="celular" required="required">
                            <br>
                            <label for="">E-mail:</label><br>
                            <input type="text" value="<c:out value='${user.email}' />" id="email" name="email" required="required">
                            <br>
                            <label for="">Escolaridade: </label><br>
                            <input type="text" value="<c:out value='${user.escolaridade}' />" id="escolaridade" name="escolaridade" required="required">
                            <br>
                            <label for="">Estado Cívil:</label><br>
                            <input type="text" value="<c:out value='${user.civil}' />" id="estado_civil" name="civil" required="required">

                            <div class="linha" id="linha"></div>
                            <h1>Endereço</h1>

                            <label for="">CEP</label><br>
                            <input id="cep" type="text" value="<c:out value='${user.cep}' />" name="cep" required/>
                            <br><label for="">Logradouro</label><br>
                            <input id="logradouro" type="text" value="<c:out value='${user.lagradouro}' />" name="lagradouro" required/>
                            <br><label for="">Número</label><br>
                            <input id="numero" type="text" value="<c:out value='${user.numero}' />" name="numero" />
                            <br><label for="">Complemento</label><br>
                            <input id="complemento" type="text" value="<c:out value='${user.complemento}' />" name="complemento" />
                            <br><label for="">Bairro</label><br>
                            <input id="bairro" type="text" value="<c:out value='${user.bairro}' />" name="bairro" required/>
                            <br><label for="">Estado</label><br>
                            <input id="uf" type="text" value="<c:out value='${user.uf}' />" name="uf" required/>

                            <div class="linha" id="linha"> </div>

                            <h1>Avaliação: </h1>
                            <label for="">N° Membros:</label><br>
                            <input id="membros" type="text" required value="<c:out value='${user.membros}' />" name="membros"><br>
                            <label for="">N° Membros Economicamente Ativos:</label><br>
                            <input id="ativos" type="text" required value="<c:out value='${user.ativos}' />" name="ativos" /><br>
                            <label for="">Renda Individual:</label><br>
                            <input id="individual" type="text" required value="<c:out value='${user.individual}' />" name="individual" /><br>
                            <label for="">Renda Familiar: </label><br>
                            <input id="familiar" type="text" value="<c:out value='${user.familiar}' />" name="familiar" /><br>

                            <label for="">Tipo do Processo:</label><br>
                            <input id="tipo" type="text" required value="<c:out value='${user.tipo}' />" name="tipo" /><br>

                            <br>
                            <input type="submit" value="Salvar">

                        </div>
                        </form>
                    </div>
                </div>
        </body>

        </html>
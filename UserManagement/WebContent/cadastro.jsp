<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html lang="pt">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
        <link rel="stylesheet" type="text/css" href="../css/cadastrar.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="../js/script.js" defer></script>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>


        <link rel="sortcut icon" href="../imgs/page1/goias.png" type="image/gif" />

    </head>

    <body>

        <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <a class="navbar-brand" href="../index.html">Defensoria Pública</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="cadastrados.html">Cadastrados</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="realizados.html">Atendimento realizados</a>
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
        <main role="main" class="container">
            <img src="../imgs/page1/logo.png" alt="Paris" class="center">

            <div class="starter-template" id="template">
                <br>

                <title>DEFENSORIA | PÚBLICA GO</title>

                </style>
                </head>

                <body>
                    <form class="cadastro" action="processa.php" method="POST">

                        <div class="pessoais" id="pessoais">

                            <h1>Dados Básicos</h1>
                            <div class="one">
                                <label for="">Nome: </label><br>
                                <input id="nome" type="text" required placeholder="Digite o Nome" name="nome">
                                <br>
                                <label for="">CPF: </label><br>
                                <input id="cpf" type="number" placeholder="Digite o CPF" name="cpf">
                                <br>
                                <label>Data de nascimento:</label><br>
                                <input id="nascimento" type="date" name="nascimento" required>
                                <br>
                                <label for="">Nome da Mãe:</label><br>
                                <input id="mae" type="text" required placeholder="Digite o nome da Mãe" name="mae">
                                <br>
                                <label for="">Nome da Pai:</label><br>
                                <input id="pai" type="text" required placeholder="Digite o nome da Pai" name="pai">
                                <br>
                                <label for="">Genero:</label><br>
                                <select id="genero" name="genero" id="genero">
                  <option disabled selected > Selecione </option>
                  <option value="Masculino">Masculino</option>
                  <option value="Feminino">Feminino</option>
                  <option value="Não Declarar">Outros</option>
              </select>
                            </div>
                            <div class="two">
                                <label for="">Telefone:</label>
                                <input type="number" name='telefone' placeholder="Digite o número de telefone fixo">
                                <br>
                                <label for="">Celular:</label>
                                <input type="number" name='celular' required placeholder="Digite o número do celular">
                                <br>
                                <label for="">E-mail:</label>
                                <input type="text" name='email' required placeholder="Digite o e-mail">
                                <br>
                                <label for="">Escolaridade: </label><br>
                                <select id="escolaridade" name="escolaridade" id="escolaridade">
                  <option disabled selected > Selecione </option>
                  <option value="Ensino Fundamental">Ensino Fundamental</option>
                  <option value="Ensino Medio">Ensino Medio</option>
                  <option value="Ensino Superior">Ensino Superior</option>
                  <option value="Ensino Fundamental Incompleto">Ensino Fundamental Incompleto</option>
                  <option value="Ensino Medio Incompleto">Ensino Medio Incompleto</option>
                  <option value="Ensino Superior Incompleto">Ensino Superior Incompleto</option>
              </select>
                                <br>
                                <label for="">Estado Cívil:</label><br>
                                <select id="estado_civil" name="estado_civil" id="estado_civil">
                  <option disabled selected > Selecione </option>
                  <option value="Solteiro">Solteiro</option>
                  <option value="Casado">Casado</option>
                  <option value="Separado">Separado</option>
                  <option value="Divorciado">Divorciado</option>
                  <option value="Viuvo">Viúvo</option>
                  <option value="Amasiado">Amasiado</option>
              </select>
                                <br>
                                <br>
                                <br>
                                <p onclick="verifica()">Próximo</p>
                            </div>
                        </div>
                        <div class="contato" id="contato">
                            <h1>Endereço</h1>
                            <form>
                                <div class="one">

                                    <label for="cep">CEP</label>
                                    <input id="cep" type="text" required/>
                                    <label for="logradouro">Logradouro</label>
                                    <input id="logradouro" type="text" required/>
                                    <label for="numero">Número</label>
                                    <input id="numero" type="text" />

                                </div>

                                <div class="two">

                                    <label for="complemento">Complemento</label>
                                    <input id="complemento" type="text" />
                                    <label for="bairro">Bairro</label>
                                    <input id="bairro" type="text" required/>
                                    <label for="uf">Estado</label>
                                    <select id="uf">
                  <option value="AC">Acre</option>
                  <option value="AL">Alagoas</option>
                  <option value="AP">Amapá</option>
                  <option value="AM">Amazonas</option>
                  <option value="BA">Bahia</option>
                  <option value="CE">Ceará</option>
                  <option value="DF">Distrito Federal</option>
                  <option value="ES">Espírito Santo</option>
                  <option value="GO">Goiás</option>
                  <option value="MA">Maranhão</option>
                  <option value="MT">Mato Grosso</option>
                  <option value="MS">Mato Grosso do Sul</option>
                  <option value="MG">Minas Gerais</option>
                  <option value="PA">Pará</option>
                  <option value="PB">Paraíba</option>
                  <option value="PR">Paraná</option>
                  <option value="PE">Pernambuco</option>
                  <option value="PI">Piauí</option>
                  <option value="RJ">Rio de Janeiro</option>
                  <option value="RN">Rio Grande do Norte</option>
                  <option value="RS">Rio Grande do Sul</option>
                  <option value="RO">Rondônia</option>
                  <option value="RR">Roraima</option>
                  <option value="SC">Santa Catarina</option>
                  <option value="SP">São Paulo</option>
                  <option value="SE">Sergipe</option>
                  <option value="TO">Tocantins</option>
                </select>
                                </div>
                                <p onclick="voltar()">Voltar</p>
                                <p onclick="avancar()">Próximo</p>
                        </div>

                        <div class="familia" id="familia">

                            <h1>Avaliação: </h1>
                            <br>
                            <div class="one">

                                <label for="membros">N° Membros:</label>
                                <input id="membros" type="text" required/><br>
                                <label for="ativos">N° Membros Economicamente Ativos:</label>
                                <input id="ativos" type="text" required/><br>
                                <label for="individual">Renda Individual:</label>
                                <input id="individual" type="text" /><br>
                                <label for="familiar">Renda Familiar: </label>
                                <input id="familiar" type="text" required/><br>
                                <label for="saude">Plano de Saúde: </label>
                                <select name="saude" id="saude">
                  <option disabled selected >Selecione </option>
                  <option value="SIM">SIM </option>
                  <option value="NAO">NÃO </option>
            
                </select><br>

                            </div>

                            <div class="two">
                                <label for="">Isento IR:</label>
                                <select name="isento" id="isento">
                  <option disabled selected >Selecione </option>
                  <option value="SIM">SIM </option>
                  <option value="NAO">NÃO </option>
            
                </select><br>
                                <label for="">Tipo do Processo:</label>
                                <select name="tipo" id="tipo">
                  <option disabled selected >Selecione </option>
                  <option value="Infancia e Juventude">Infância e Juventude</option>
                  <option value="Familia">Família</option>
                  <option value="Saúde">Saúde</option>
                  <option value="Cívil">Cívil</option>
                </select><br>
                                <label for="">Resumo</label>
                                <textarea name="resumo" id="" cols="30" rows="10"></textarea>
                                <br>
                                <br>
                            </div>


                            <p onclick="volte()">Voltar</p>
                            <p onclick="salvar()">Cadastrar</p>
                        </div>
                        <div class="salvar" id="salve">
                            <h1>Deseja mesmo salvar?</h1>

                            <p onclick="back()">Cancelar</p>
                            <input type="submit" value="Salvar" onclick="alert('Cadastro Realizado com sucesso')">
                        </div>


                        <br><br>
                        <div id="footers">
                            <p>Defensoria Pública-GO © - Todos os Direitos Reservados.</p>
                            <br>
                            </form>
                        </div>
                </body>

    </html>
<%-- 
    Document   : pedido
    Created on : Apr 26, 2021, 1:31:16 PM
    Author     : Caio Marte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pede Pizza</title>
        
        <link href="pedido.css" rel="stylesheet">
    </head>
    <body>
        <header>
            <img src="logo.png" id="logo">
        </header>
        <content>
            <div class="container card">
                <form id="pedido" method="post" action="/Pedir">
                    <section class="row mb-3">
                        <h3>Monte sua pizza:</h3>
                        <select class="form-select col" id="sabor" name="sabor" form="pedido">
                            <option selected>Escolha um sabor</option>
                            <option value="Pepperoni">Pepperoni</option>
                            <option value="Frango com catupiry">Frango com catupiry</option>
                            <option value="Atum acebolado">Atum acebolado</option>
                            <option value="Brocolis">Brócolis</option>
                            <option value="Banana com doce de leite">Banana com doce de leite</option>
                            <option value="Romeu e Julieta">Romeu e Julieta</option>
                            <option value="Chocolate com morango">Chocolate com morango</option>
                        </select>
                        <div class="form-check col-md-2">
                            <input class="form-check-input" type="radio" name="massa" id="tradicional" value="tradicional" checked>
                            <label class="form-check-label" for="tradicional">
                              Massa tradicional
                            </label>
                        </div>
                        <div class="form-check col-md-2">
                            <input class="form-check-input" type="radio" name="massa" value="grossa" id="grossa">
                            <label class="form-check-label" for="grossa">
                              Massa grossa
                            </label>
                        </div>
                        <div class="form-check col-md-2">
                            <input class="form-check-input" type="radio" name="massa" value="fina" id="fina">
                            <label class="form-check-label" for="fina">
                              Massa fina
                            </label>
                        </div>
                    </section>
                    <section>
                        <div class="mb-3">
                            <h3><label for="nome" class="form-label">Nome:</label></h3>
                            <input type="text" name="nome" class="form-control" id="nome" placeholder="Nome Completo">
                        </div>
                    </section>
                    <section>
                        <div class="mb-3">
                            <h3><label for="endereco" class="form-label">Endereço:</label></h3>
                            <input type="text" name="endereco" class="form-control" id="endereco" placeholder="Rua, 123 - Bairro, Cidade / CEP">
                        </div>
                    </section>
                    <button type="submit" class="btn btn-danger">Realizar pedido</button>
                </form>
            </div>
        </content>
    </body>
</html>

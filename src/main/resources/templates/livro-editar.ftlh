<!DOCTYPE html>
<html>
<head>
    <title>Corrigir Livro - EstanteWeb</title>
</head>
<body>
    <#include "cabecalho.ftlh">

    <h1>Corrigir livro</h1>

    <#if erro??>
        <p style="color: red;">${erro}</p>
    </#if>

    <form method="post" action="/livros/${id?c}/editar">
        Título: <input type="text" name="titulo" value="${titulo!}"><br>
        Autor: <input type="text" name="autor" value="${autor!}"><br>
        Ano: <input type="text" name="ano" value="${(ano?c)!}"><br>
        Preço: <input type="text" name="preco" value="${(preco?c)!}"><br>
        <button type="submit">Salvar correção</button>
    </form>

    <a href="/livros/${id?c}">Cancelar</a>
</body>
</html>
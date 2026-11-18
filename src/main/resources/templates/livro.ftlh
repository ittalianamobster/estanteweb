<!DOCTYPE html>
<html>
<head>
    <title>${livro.titulo}</title>
</head>
<body>
    <#include "cabecalho.ftlh">

    <h1>${livro.titulo}</h1>
    <p>Autor: ${livro.autor}</p>
    <p>Ano: ${livro.ano?c}</p>
    <p>Preço: R$ ${livro.preco?c}</p>

    <p>
        <a href="/livros/${livro.id?c}/editar">Corrigir este livro</a>
    </p>
    <#if outros?size gt 0>
        <h2>Outros títulos do mesmo autor</h2>
        <ul>
            <#list outros as outro>
                <li><a href="/livros/${outro.id?c}">${outro.titulo}</a></li>
            </#list>
        </ul>
    </#if>

    <a href="/livros/html">Voltar para o acervo</a>
</body>
</html>
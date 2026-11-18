<!DOCTYPE html>
<html>
<head>
    <title>Remover Livro - EstanteWeb</title>
</head>
<body>
    <#include "cabecalho.ftlh">

    <h1>Remover livro</h1>

    <p>Você está prestes a remover do acervo:</p>
    <p><strong>${livro.titulo}</strong>, de ${livro.autor} (${livro.ano?c}) - R$ ${livro.preco?c}</p>
    <p>Esta ação não pode ser desfeita.</p>

    <form method="post" action="/livros/${livro.id?c}/remover">
        <button type="submit">Confirmar remoção</button>
    </form>

    <a href="/livros/${livro.id?c}">Desistir</a>
</body>
</html>
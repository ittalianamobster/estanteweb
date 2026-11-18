<!DOCTYPE html>
<html>

<head>
    <title>Acervo EstanteWeb</title>
</head>

<body>
    <h1>Acervo EstanteWeb</h1>

    <#if livros?size==0>
        <p>Nenhum livro no acervo no momento</p>
        <#else>
            <ul>
                <#list livros as livro>
                    <li>
                        <a href="/livros/${livro.id?c}">${livro.titulo}</a>, de ${livro.autor} (R$ ${livro.preco?c})
                    </li>
                </#list>
            </ul>
    </#if>
</body>

</html>
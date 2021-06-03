/* html//1, reply_html_page  */
:- use_module(library(http/html_write)).
/* html_requires  */
:- use_module(library(http/html_head)).

:- ensure_loaded(gabarito(bootstrap)).
:- use_module(bd(bookmark)).

entrada(_):-
    reply_html_page(
        bootstrap,
        [ title('Bookmarks')],
        [ div(class(container),
              [ \html_requires(css('all.min.css')),
                \html_requires(js('rest.js')),
                \html_requires(js('bookmark.js')),
                h1('Meus bookmarks'),
                \tabela_de_bookmarks
              ]) ]).

tabela_de_bookmarks -->
    html([ \html_requires(css('entrada.css')),
           div(class('table-responsive'),
               [ div(class('table-wrapper'),
                     [ \titulo_tabela('Bookmarks'),
                       \tabela
                     ])])]).

titulo_tabela(Titulo) -->
    html(div(class('table-title'),
             div(class(row),
                 [ div(class('col-sm-8'),
                       h2(b(Titulo))),
                   div(class('col-sm-4'),
                       a([ href('/bookmark'),
                           class('btn btn-info add-new')],
                         [ i(class('fas fa-plus'),[]),
                           'Novo'])
                      )]))).

tabela -->
    html(table(class('table table-striped w-auto'),
               [ \cabecalho,
                 tbody(\corpo_tabela)
               ])).

cabecalho -->
    html(thead(tr([ th([scope(col)], '#'),
                    th([scope(col)], 'Titulo'),
                    th([scope(col)], 'URL'),
                    th([scope(col)], 'Acoes')
                  ]))).



corpo_tabela -->
    {
        findall( tr([th(scope(row), Id), td(Titulo), td(URL), td(Acoes)]),
                 ( bookmark(Id, Titulo, URL), acoes(Id,Acoes) ),
                 Linhas )
    },
    html(Linhas).


acoes(Id, Campo):-
    Campo = [ a([ class(edit), title('Alterar'),
                  href('/bookmark/editar/~w' - Id),
                  'data-toggle'(tooltip)],
                [ i(class('fas fa-pen'),[])]),
              \delete(Id)
            ].

delete(Id) -->
    html(form([ id('bookmark-delete'),
                class(delete), title('Excluir'),
                onsubmit("apagar(event, '/')"),
                action('/api/v1/bookmarks/~w' - Id), 
                method('POST')],
              [
                  button([ type(submit) ],
                        [i(class('fas fa-trash'),[])])
              ])).


:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).

% html_requires está aqui
:- use_module(library(http/html_head)).

% serve_files_in_directory está aqui
:- use_module(library(http/http_server_files)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).


% Localização dos diretórios no sistema de arquivos
:- multifile user:file_search_path/2.
user:file_search_path(dir_css, 'css').
user:file_search_path(dir_js,  'js').


% Liga as rotas aos respectivos diretórios
:- http_handler(css(.),
                serve_files_in_directory(dir_css), [prefix]).
:- http_handler(js(.),
                serve_files_in_directory(dir_js), [prefix]).

% Gabaritos
:- multifile
        user:body//2.

user:body(bootstrap, Corpo) -->
       html(body([ \html_post(head,
                              [ meta([name(viewport),
                                      content('width=device-width, initial-scale=1')])]),
                   \html_root_attribute(lang,'pt-br'),
                   \html_requires(css('bootstrap.min.css')),

                   Corpo,

                   script([ src('js/bootstrap.bundle.min.js'),
                            type('text/javascript')], [])
                 ])).



% Liga a rota ao tratador
:- http_handler(root(.), home , []).

:- http_handler(root(exemplo1), exemplo1 , []).
:- http_handler(root(exemplo2), exemplo2 , []).
:- http_handler(root(exemplo3), exemplo3 , []).


% Tratadores

home(_Pedido) :-
    reply_html_page(
        bootstrap, % style
        [ title('Bootstrap 5 basico')], % head 
        [ div(class(container), % body
              [ h1('Exemplos usando Bootstrap 5 e SWI-Prolog'),
                nav(class(['nav', 'flex-column']),
                    [ \link_exemplo(1),
                      \link_exemplo(2),
                      \link_exemplo(3) ])
              ]) ]).

exemplo1(_Pedido) :-
    reply_html_page(
        bootstrap,
        [ title('Exemplo 1')],
        [ div(class(container),
              [ \html_requires(css('estilo.css')),
                h2(class("my-5 text-center"),
                   'Exemplo 1 com Bootstrap 5 e SWI-Prolog'),
                div(class("container my-5"),
                    div(class(row),
                        [div(class('col-md-8'),
                             'Aenean iaculis turpis id sapien elementum consectetur. Nam tincidunt arcu eu vulputate elementum. Nullam imperdiet arcu tempus vestibulum laoreet. Praesent cursus libero auctor egestas auctor. Praesent rhoncus feugiat ornare. Pellentesque rhoncus tempor malesuada. Curabitur sed tellus porttitor, ullamcorper tellus at, iaculis orci. Fusce pellentesque porttitor tellus, non maximus orci tincidunt non. Curabitur et nulla nec ipsum placerat pretium.'),
                         div(class('col-md-4'),
                             'Barra Lateral')])),
                \retorna_home
              ])]).

exemplo2(_Pedido) :-
    reply_html_page(
        bootstrap,
        [ title('Exemplo 2')],
        [ div(class(container),
              [ \html_requires(css('estilo.css')),
                h2(class("my-5 text-center"),
                   'Exemplo 2 com Bootstrap 5 e SWI-Prolog'),
                div(class('container my-5'),
                    div(class(row),
                        [div(class('col-md-8 text-center'),
                             ['Cabecalho',
                              div(class="row text-center",
                                  [div(class="col-md-6",
                                       [ 'Artigo 1',
                                         p('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id convallis turpis. Fusce dictum libero tincidunt lacus feugiat, id elementum eros pulvinar. Curabitur sed consectetur mi. Etiam placerat, sapien quis efficitur venenatis, erat erat eleifend lorem, ac consequat massa diam quis velit. In consectetur vestibulum hendrerit. Suspendisse convallis enim vel odio dapibus congue. Nulla tincidunt mollis suscipit. Etiam varius orci sit amet lectus pharetra, sed elementum ex molestie. Phasellus eu viverra nisi. Phasellus malesuada, risus a ultrices dapibus, arcu elit pellentesque leo, ac porta orci neque in enim. Sed interdum convallis dolor, vitae commodo libero fringilla tempus. Cras elit quam, fermentum id pretium eget, ullamcorper sed lorem.'),
                                         p('Suspendisse tincidunt rhoncus ornare. Cras in ultricies metus. Suspendisse dignissim leo eu dapibus vehicula. Curabitur nibh arcu, tincidunt ac pellentesque in, dapibus a mi. Mauris bibendum magna nec elit finibus imperdiet. Vestibulum a eros nulla. Integer vitae mi sagittis, sodales ex et, lobortis mauris. Fusce condimentum accumsan consequat. Etiam placerat non dui cursus mollis. Morbi ac ex id magna porta euismod in eu turpis. Aliquam in congue mi.')]),
                                   div(class="col-md-6",
                                       [ 'Artigo 2',
                                         p('Nam magna augue, varius et turpis vel, tincidunt egestas dolor. Vivamus fermentum metus vitae ligula molestie sagittis. Nulla nec suscipit lacus. Donec laoreet diam vitae metus tincidunt gravida. Suspendisse ornare molestie diam, sit amet bibendum dolor vehicula id. Duis erat felis, iaculis porta egestas vel, ornare sed magna. Pellentesque a sapien a nunc condimentum venenatis. Aliquam iaculis pellentesque turpis, non ultrices dui congue non.'), 
                                         p('Proin mollis nisl ante, eu interdum metus vestibulum eu. Vivamus vestibulum convallis quam, sed finibus ante faucibus sed. Donec varius erat nec interdum volutpat. Phasellus lacus tellus, venenatis a congue quis, consequat pharetra nulla. Sed nec mi eu odio vulputate vehicula vel at dui. Aliquam molestie odio velit, sed semper metus vestibulum maximus. Proin faucibus nibh eget elementum aliquet.')]),
                                   span('Rodape')])]),
                         div(class('col-md-4'),
                             'Barra Lateral')])),
                \retorna_home
              ])]).


exemplo3(_Pedido) :-
    reply_html_page(
        bootstrap,
        [ title('Exemplo 3')],
        [ div(class(container),
              [ \html_requires(css('estilo.css')),
                h2(class("my-5 text-center"),
                   'Exemplo 3 com Bootstrap 5 e SWI-Prolog'),
                div(class('container my-5'),
                    div(class(row),
                        \colunas(12))),
                \retorna_home
              ])]).

colunas(Max) -->
    {
        findall(div(class(['col-xxl-1', 'col-xl-2', 'col-lg-3',
                           'col-md-4',  'col-sm-6', 'col-xs-12']),
                    ['Coluna ', I]),
                between(1,Max,I),
                Colunas)
    },
    html(Colunas).

% Links

link_exemplo(N) -->
    html(a([ class(['nav-link']),
             href('/exemplo~d' - N)],
          'Exemplo ~d' - N)).

retorna_home -->
    html(div(class(row),
             a([ class(['btn', 'btn-primary']),
                 href('/')],
               'Voltar para o inicio'))).

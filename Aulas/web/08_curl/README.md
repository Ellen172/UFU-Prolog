# Usando CURL 
- Usado na linha de comando para testa uma API

## POST (inserir)
curl -v -d '{"id": "5", "titulo": "exemplo"}'
    -H 'Content-Type: application/json'

## POST (de um arquivo)
curl -v -d @arquivo.json -H 'Content-Type: application/json'
    

## GET (obter)
curl -v http://localhost:8000/api/v1/bookmarks/

## PUT (atualizar)
curl -v -d '{"id": "5", "titulo": "exemplo"}'
    -H 'Content-Type: application/json'
    -X PUT http://localhost:8000/api/v1/bookmarks/

## PUT (de um arquivo json)
curl -v -d @arquivo.json -H 'Content-Type: application/json'
    -X PUT http://localhost:8000/api/v1/bookmarks/

## DELETE (remover)
curl -v -X DELETE http://localhost:8000/api/v1/bookmarks/5
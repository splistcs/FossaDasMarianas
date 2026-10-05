#!/usr/bin/env bash

URLDEBUG="http://localhost:8081/fdm/produtos"
URL="http://localhost:8081/fdm/pesquisarproduto"
nomes=("Produto Teste1" "Produtos" "ProdatoYWZX" "Produto")
pesquisarnomes=("Produto%20Teste1" "Produt" "ProdutoYWZX" "Produto")
marcas=("todos" "todos" "todos" "nenhum")
materiais=("todos" "todos" "todos" "nenhum")
ids=("1" "2" "3" "4")

echo "=== PREPARO DE AMBIENTE DE TESTE ==="

curl -X 'POST' "$URLDEBUG" \
  -H 'accept: */*' \
  -H 'Content-Type: application/json' \
  -d '{
  "id": 1,
  "nome": "ERRO",
  "descricao": "ERRO",
  "material": "ERRO",
  "marca": "ERRO",
  "ativo": false,
  "imagemPrincipalUrl": "ERRO"
}'
echo -e "\n"

for i in "${!ids[@]}"; do
  curl -X POST "$URLDEBUG" \
    -H 'accept: */*' \
    -H 'Content-Type: application/json' \
    -d "{
      \"id\": ${ids[$i]},
      \"nome\": \"${nomes[$i]}\",
      \"descricao\": \"Produto para teste ${ids[$i]}\",
      \"material\": \"${materiais[$i]}\",
      \"marca\": \"${marcas[$i]}\",
      \"ativo\": true,
      \"imagemPrincipalUrl\": \"string\"
    }"
  echo -e "\n"
done

echo -e "\n\n"
echo -e "Veja Roteiro de Teste para mais detalhes\n"
echo "[INICIO]"

for i in "${!ids[@]}"; do
  echo "=== Teste "${ids[$i]}" - GET pesquisarproduto ==="
  curl -X GET "$URL?nome=${pesquisarnomes[$i]}&material=${materiais[$i]}&marca=${marcas[$i]}" \
    -H 'accept: */*'
  echo -e "\n\n"
done

#!/bin/bash
# Este script cria um arquivo, escreve texto nele e exibe seu conteúdo

# Nome do arquivo
FILE="exemplo1.txt"

# Cria ou limpa o arquivo
echo "Criando arquivo $FILE"
> "$FILE"

# Adiciona texto ao arquivo
echo "Este é um arquivo de exemplo." > "$FILE"
echo "Linha 2" >> "$FILE"

# Exibe o conteúdo do arquivo
echo "Conteúdo do arquivo $FILE:"
cat "$FILE"


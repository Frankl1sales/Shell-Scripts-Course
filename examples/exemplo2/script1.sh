#!/bin/bash
# Este script processa um arquivo de texto e conta o número de linhas

# Nome do arquivo de entrada
INPUT_FILE="input_data.txt"

# Verifica se o arquivo de entrada existe
if [ ! -f "$INPUT_FILE" ]; then
    echo "Arquivo de entrada $INPUT_FILE não encontrado!"
    exit 1
fi

# Conta o número de linhas no arquivo
LINE_COUNT=$(wc -l < "$INPUT_FILE")

# Exibe o número de linhas
echo "O arquivo $INPUT_FILE tem $LINE_COUNT linhas."


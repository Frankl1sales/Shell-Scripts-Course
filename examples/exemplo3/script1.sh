#!/bin/bash
# Este script faz backup de um diretório especificado

# Configuração
CONFIG_FILE="config_example.conf"
BACKUP_DIR="backup"

# Lê o diretório a ser copiado do arquivo de configuração
SOURCE_DIR=$(grep '^source_dir=' "$CONFIG_FILE" | cut -d'=' -f2)
if [ -z "$SOURCE_DIR" ]; then
    echo "Diretório de origem não especificado no arquivo de configuração!"
    exit 1
fi

# Verifica se o diretório de origem existe
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Diretório de origem $SOURCE_DIR não encontrado!"
    exit 1
fi

# Cria o diretório de backup se não existir
mkdir -p "$BACKUP_DIR"

# Faz o backup
DATE=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

# Exibe o nome do arquivo de backup
echo "Backup criado: $BACKUP_FILE"


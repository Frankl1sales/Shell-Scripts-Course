#!/bin/bash

# Função para criar um diretório e um arquivo README.md padrão
create_directory_with_readme() {
    local dir=$1
    mkdir -p "$dir"
    touch "$dir/README.md"
    echo "# $dir" > "$dir/README.md"
    echo "Este diretório contém arquivos e dados relacionados ao projeto." >> "$dir/README.md"
}

# Cria diretórios principais
mkdir -p my-shell-project
cd my-shell-project

# Cria diretórios secundários
mkdir -p docs examples resources logs

# Cria arquivos de documentação
echo "# Projeto de Shell Scripts" > README.md
echo "Este repositório contém scripts e recursos para um projeto de shell script." >> README.md

echo "# Tutorial" > docs/tutorial.md
echo "Este documento fornece um guia sobre como usar os scripts incluídos neste repositório." >> docs/tutorial.md

echo "# Histórico de Mudanças" > docs/CHANGELOG.md
echo "Registra todas as mudanças e atualizações feitas no projeto." >> docs/CHANGELOG.md

# Adiciona exemplos de scripts
create_directory_with_readme examples/example1
echo "#!/bin/bash" > examples/example1/script1.sh
echo "# Este script faz algo interessante para exemplo 1" >> examples/example1/script1.sh
echo "echo \"Executando script1 do exemplo 1\"" >> examples/example1/script1.sh
chmod +x examples/example1/script1.sh

create_directory_with_readme examples/example2
echo "#!/bin/bash" > examples/example2/script2.sh
echo "# Este script faz algo interessante para exemplo 2" >> examples/example2/script2.sh
echo "echo \"Executando script2 do exemplo 2\"" >> examples/example2/script2.sh
chmod +x examples/example2/script2.sh

create_directory_with_readme examples/example3
echo "#!/bin/bash" > examples/example3/script3.sh
echo "# Este script faz algo interessante para exemplo 3" >> examples/example3/script3.sh
echo "echo \"Executando script3 do exemplo 3\"" >> examples/example3/script3.sh
chmod +x examples/example3/script3.sh

# Adiciona arquivos de exemplo em resources
echo "linha 1" > resources/sample_input.txt
echo "linha 2" >> resources/sample_input.txt
echo "linha 3" >> resources/sample_input.txt

echo "[config]" > resources/config_example.conf
echo "chave1=valor1" >> resources/config_example.conf
echo "chave2=valor2" >> resources/config_example.conf

# Adiciona arquivos de log
touch logs/activity.log
echo "Log de atividades do projeto." > logs/activity.log

create_directory_with_readme logs

# Mensagem de sucesso
echo "Estrutura de diretórios e arquivos do projeto criada com sucesso!"


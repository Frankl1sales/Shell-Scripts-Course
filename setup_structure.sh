#!/bin/bash

# Função para criar um diretório e um arquivo README.md padrão
create_example() {
    local example_dir=$1
    mkdir -p "$example_dir"
    touch "$example_dir/README.md"
    echo "# $example_dir" > "$example_dir/README.md"
    echo "Este diretório contém scripts e arquivos para o exemplo $example_dir." >> "$example_dir/README.md"
}

# Cria diretórios principais
mkdir -p docs examples resources

# Cria arquivos de documentação
echo "# Tutorial" > docs/tutorial.md
echo "Este documento fornece um guia sobre como usar os scripts incluídos neste repositório." >> docs/tutorial.md

echo "# Exemplos de Scripts" > docs/examples.md
echo "Aqui estão os exemplos de como usar os scripts." >> docs/examples.md

# Adiciona exemplos para cada subdiretório
create_example "examples/exemplo1"
create_example "examples/exemplo2"
create_example "examples/exemplo3"

# Adiciona arquivos de exemplo em resources
echo "linha 1" > resources/sample_input.txt
echo "linha 2" >> resources/sample_input.txt
echo "linha 3" >> resources/sample_input.txt

echo "[config]" > resources/config_example.conf
echo "chave1=valor1" >> resources/config_example.conf
echo "chave2=valor2" >> resources/config_example.conf

# Adiciona exemplos de scripts
echo "#!/bin/bash" > examples/exemplo1/script1.sh
echo "# Este script faz algo interessante para exemplo 1" >> examples/exemplo1/script1.sh
echo "echo \"Executando script1 do exemplo 1\"" >> examples/exemplo1/script1.sh
chmod +x examples/exemplo1/script1.sh

echo "#!/bin/bash" > examples/exemplo2/script1.sh
echo "# Este script faz algo interessante para exemplo 2" >> examples/exemplo2/script1.sh
echo "echo \"Executando script1 do exemplo 2\"" >> examples/exemplo2/script1.sh
chmod +x examples/exemplo2/script1.sh

echo "#!/bin/bash" > examples/exemplo3/script1.sh
echo "# Este script faz algo interessante para exemplo 3" >> examples/exemplo3/script1.sh
echo "echo \"Executando script1 do exemplo 3\"" >> examples/exemplo3/script1.sh
chmod +x examples/exemplo3/script1.sh

# Mensagem de sucesso
echo "Estrutura de diretórios e arquivos criada com sucesso!"

#!/bin/bash

REPO_URL="https://github.com/PiodIsPaia/neovim" 

CONFIG_DIR="$HOME/.config/nvim"

print_info() {
  echo -e "\e[32m[INFO]\e[0m $1"
}

print_error() {
  echo -e "\e[31m[ERROR]\e[0m $1"
}

if [ -d "$CONFIG_DIR" ]; then
  print_info "Diretório de configuração do Neovim já existe. Pulando criação..."
else
  print_info "Criando diretório de configuração do Neovim em $CONFIG_DIR..."
  mkdir -p "$CONFIG_DIR"
fi

if [ "$(ls -A $CONFIG_DIR)" ]; then
  print_info "Diretório de configuração do Neovim não está vazio. Pulando clonagem..."
else
  print_info "Clonando repositório de configuração do Neovim..."
  git clone "$REPO_URL" "$CONFIG_DIR"
  if [ $? -eq 0 ]; then
    print_info "Repositório clonado com sucesso!"
  else
    print_error "Falha ao clonar repositório. Verifique o URL do repositório."
    exit 1
  fi
fi

print_info "Configuração concluída! O Neovim está pronto para uso."

exit 0

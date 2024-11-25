#!/bin/bash

REPO_URL="https://github.com/PiodIsPaia/neovim" 

CONFIG_DIR="$HOME/.config/nvim"

PACKER_PATH="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"

print_info() {
  echo -e "\e[32m[INFO]\e[0m $1"
}

print_error() {
  echo -e "\e[31m[ERROR]\e[0m $1"
}

if [ -d "$PACKER_PATH" ]; then
  print_info "Packer já está instalado!"
else
  print_info "Instalando o Packer..."
  git clone --depth 1 https://github.com/wbthomason/packer.nvim "$PACKER_PATH"
  if [ $? -eq 0 ]; then
    print_info "Packer instalado com sucesso!"
  else
    print_error "Falha ao instalar o Packer."
    exit 1
  fi
fi

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

print_info "Executando ':PackerSync' no Neovim..."
nvim -c "PackerSync" -c "qall"

if [ $? -eq 0 ]; then
  print_info "Todos os plugins foram instalados com sucesso!"
else
  print_error "Houve algum problema durante a instalação dos plugins."
  exit 1
fi

print_info "Configuração concluída! O Neovim está pronto para uso."

exit 0

# 💿 Criando um Pendrive Bootável com Linux via Script Bash

Este é um pequeno script em Bash que permite criar um pendrive bootável com uma ISO Linux diretamente pelo terminal, de forma rápida e prática, sem a necessidade de programas externos.  

⚠️ **Aviso:** Este script é para fins de prática de Bash scripting. É básico, sem verificação de memória ou detecção automática de dispositivos. Use com cuidado e por sua conta e risco.

## ⚡ Funcionalidades

- Lista os dispositivos removíveis disponíveis
- Permite escolher o pendrive que será apagado
- Limpa o pendrive e grava a ISO
- Finaliza e ejeta o pendrive automaticamente

> ⚠️ Todos os dados do pendrive serão apagados!

## 📝 Como usar

1. Clone este repositório ou baixe o script.
2. Dê permissão de execução:
   ```bash
   chmod +x bootable-usb.sh
3. Execute:
    ```bash
    ./bootable-usb.sh
## Siga as instruções:

- Informe o nome do pendrive (ex: sdb)
- Confirme que deseja apagar o pendrive
- Informe o caminho completo da ISO

> O script vai apagar o pendrive, gravar a ISO e ejetá-lo ao final.
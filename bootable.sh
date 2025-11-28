#!/bin/bash

echo "Dispositivos disponíveis:"
lsblk -o NAME,MODEL,TRAN,SIZE,TYPE,MOUNTPOINT

read -p "Digite o nome do pendrive (ex: sda): " pendrive

# Verifica se é USB
if ! lsblk -o NAME,TRAN | grep -q "^$pendrive[0-9]* *usb"; then
    echo "ERRO: O dispositivo /dev/$pendrive não parece ser USB."
    exit 1
fi

read -p "Caminho completo da ISO: " iso

# Verifica se a ISO existe ANTES de apagar o pendrive
if [[ ! -f "$iso" ]]; then
    echo "ERRO: O arquivo ISO não existe!"
    exit 1
fi

echo "Você vai apagar COMPLETAMENTE /dev/$pendrive e gravar a ISO."
read -p "Tem certeza? (y/N): " op

if [[ "$op" == "y" || "$op" == "Y" ]]; then
    sudo wipefs -a /dev/$pendrive
    sudo dd if=/dev/zero of=/dev/$pendrive bs=1M count=10

    echo "Gravando ISO..."
    sudo dd if="$iso" of=/dev/$pendrive bs=4M status=progress oflag=sync

    sync
    sudo eject /dev/$pendrive
    echo "Tudo pronto!"
else
    echo "Operação cancelada."
fi

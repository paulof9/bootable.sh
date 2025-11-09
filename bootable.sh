#!/bin/bash

# Lista dispositivos removíveis
echo "Dispositivos disponíveis:"
lsblk -l -o NAME,RM,SIZE,TYPE,MOUNTPOINT | awk 'NR==1 || $2==1'

# Pergunta qual é o pendrive
read -p "Digite o nome do pendrive (ex: sdb): " pendrive
read -p "Tem certeza que deseja apagar /dev/$pendrive? (y/N): " op

if [[ "$op" == "y" || "$op" == "Y" ]]; then
    sudo wipefs -a /dev/$pendrive
    sudo dd if=/dev/zero of=/dev/$pendrive bs=1M count=10

    read -p "Caminho completo da ISO: " iso

    echo "Gravando ISO no pendrive, aguarde..."
    sudo dd if="$iso" of=/dev/$pendrive bs=4M status=progress oflag=sync

    sync
    sudo eject /dev/$pendrive
    echo "Tudo pronto! Você pode remover o pendrive."
else
    echo "Operação cancelada."
fi
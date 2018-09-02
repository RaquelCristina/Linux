#!/bin/sh

hoje=$(date +%d%m%Y)
touch /home/raquel/log_MyScript

echo hoje >> /home/raquel/log_MyScript

# Atualizando o sistema
echo "Atualizando o sistema... Isto pode demorar, certifique-se de uma boa conexão com a Internet"
echo
echo  # Salta uma linha na tela, para que não fique tudo junto

if ! sudo pacman -Syyuu
    then
        echo "Não foi possível atualizar o sistema, por favor verifique!!"
        echo "Erro durante a atualização" >> /home/raquel/log_MyScript
        echo >> /home/raquel/log_MyScript
    exit 1 # O bash interrompe o script caso algo dê errado
else
    echo "Atualização efetuada com sucesso!!"
    echo "Atualização OK" >> /home/raquel/log_MyScript
    echo >> /home/raquel/log_MyScript
fi
    
# Instalando e pacotes yaourt
echo "Instalando gereciador de pacotes AUR..."
echo
echo

if ! sudo pacman -S yaourt && sudo pacman -Sy && sudo pacman -Syyuu
    then
        echo "Não foi possível instalar o gerenciador 'yaourt' "
        echo "Não foi possível instalar o gerenciador 'yaourt' " >> /home/raquel/log_MyScript
        echo >> /home/raquel/log_MyScript
    exit 1
else
    echo "Instalação efetuada com sucesso!!"
    echo "Yaourt OK" >> /home/raquel/log_MyScript
fi 

#Otimizando o sistema
echo "Otimizando o sistema... Isto pode levar alguns minutos"
    yaourt -Syyuua && sudo pacman -Syu &&
    sudo pacman -Syy && sudo pacman -Syyuu && sudo pacman-optimize &&
    sudo pacman-mirrors -g && sync && sudo pacman -Sy &&
    sudo pacman -Su && sudo pacman -Syyu && sudo pacman -Qdt &&
    sudo pacman-optimize && yaourt -Syua -devel && yaourt -Syyuua &&
    yaourt -Syu -devel -aur && sudo pacman-optimize

    echo "Otimização OK" >> /home/raquel/log_MyScript
    echo >> /home/raquel/log_MyScript

#Inslando MEGASync
echo "Instalando o MEGASync"
if ! yaourt -S megasync
    then
        echo "Não foi possível instalar MegaSync"
        echo >> /home/raquel/log_MyScript
    else
        echo "MegaSync instalado com sucesso"
        echo "MegaSync OK" >> /home/raquel/log_MyScript
fi

# Instalando Clipgrab
echo "Instalando o clipgrab"
if ! yourt -S clipgrab
    then
        echo "Não foi possível instalar Clipgrab"
        echo "Não foi possível instalar Clipgrab" >> /home/raquel/log_MyScript
    else
        echo "Clipgrab instalado com sucesso"
        echo "Clipgrab OK" >> /home/raquel/log_MyScript
        echo >> /home/raquel/log_MyScript
if
# Instalando Lollypop
echo "Instalando Lollypop"
if ! yaourt -S lollypop 
    then 
        echo "Não foi possível instalar o Lollypop"
        echo >> /home/raquel/raquel/log_MyScript
    else
        echo "Lollypop instalado com sucesso."
        echo "Lollypop OK" >> /home/raquel/log_MyScript
        echo >> /home/raquel/log_MyScript
fi
#echo "O sistema será reiniciado..." sudo shutdown -r now
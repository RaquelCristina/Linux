chmod 777 Teste.sh
#!/bin/sh

hoje = $(date +%d%m%Y)

echo $hoje >> /home/raquel/instalacao

echo "Instalando SmartGit"
echo
echo

if ! yaourt -S smartgit
    then
        echo "Não foi possível instalar SmartGit"
    else
        echo "Instalação efetuada com sucesso!"
        echo "Instalação efetuada com sucesso!" >> /home/raquel/instalacao
fi
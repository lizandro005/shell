#!/bin/bash

clear

RED='\033[0;31m'
GREEN='\033[0;32m'
OFF='\033[0m'
echo ----------------------------------------------
printf "PORRA ${RED}CARALHO FODASSE ${OFF} BLQUEIRO\n"
echo ----------------------------------------------

menu()
{
echo opcoes:
echo 1: Equivalente ao docker ps -a
echo 2: Parar containers
echo 3: Listar imagens
echo
printf "Qual é a tua opção: "
read OPCAO
printf "\n"
echo A tua opção foi ${OPCAO}
echo
}

menu

if [[ $OPCAO -le "0" || $OPCAO -gt "3" ]]
then
    echo A opção $OPCAO não é válida
    exit 1
fi

if [ $OPCAO -eq "1" ]
then
    echo -----------------------CONTAINERS-------------------------------------
    docker ps -a
fi

if [ $OPCAO -eq "2" ]
then
    echo -----------------------A PARAR CONTAINERS-------------------------------------
    docker stop $(docker ps -q)
    
fi

if [ $OPCAO -eq "3" ]
then
    echo -----------------------A PARAR CONTAINERS-------------------------------------
    docker image ls
fi


CONTAINERS=$(docker ps -q)
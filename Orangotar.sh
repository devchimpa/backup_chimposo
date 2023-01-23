#!/bin/bash
#
#O objetivo do script é arquivar todos os arquivos da pasta local e
#remover os arquivos anteriores...
#
#Feito por: DevChimpa dia 14 de Janeiro de 2023
#contato: chimpadeveloper@gmail.com
#
#
#
#VARIÁVEIS:

DATA_DO_DIA=$( date +%d-%m-%y--%H-%M-%S )
NOME_ARQUIVO=$( pwd | rev | cut -d '/' -f1 | rev )
NOME_COMPLETO="$NOME_ARQUIVO-$DATA_DO_DIA.tar.gz"
CAMINHO=*

#COMANDOS:

tar -czpvf "$NOME_COMPLETO" $CAMINHO

echo "#############################################"
echo "Arquivos zipados e comprimidos."
echo "#############################################"

ls | grep -v "$NOME_COMPLETO" | xargs rm -r 

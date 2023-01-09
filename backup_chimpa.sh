#!/bin/bash
#
#Script para realizar backup da pasta de Design.
#Por fazer muitos trabalhos de Design, eu tenho uma pasta
#que sempre está enchendo com os projetos, para solucionar este problema decidi
#fazer um script para arquivar e comprimir todos esses arquivos sempre que chamar.
#
#Feito por: DevChimpa dia 08 de Janeiro de 2023
#contato: chimpadeveloper@gmail.com
#
#
#
#VARIÁVEIS:

DATA_DO_DIA=$( date +%d-%m-%y )
NOME_ARQUIVO=backup-design
NOME_COMPLETO="$NOME_ARQUIVO-$DATA_DO_DIA.tar.gz"
CAMINHO="/home/chimpa/Documents/design"

#COMANDOS:

if [ ! -d /home/backups ]
then    mkdir -p /home/backups
        CAMINHO_DESTINO="/home/backups"
else
        CAMINHO_DESTINO="/home/backups"

fi

tar -czpvf $NOME_COMPLETO $CAMINHO
echo "#############################################"
echo "Backup sendo transferido, por favor aguarde..."
echo "#############################################"
sleep 5

mv $NOME_COMPLETO $CAMINHO_DESTINO


echo "#############################################"
echo "Backup Finalizado."
echo "#############################################"
#echo $NOME_COMPLETO
#echo $NOME_ARQUIVO
#echo $DATA_DO_DIA

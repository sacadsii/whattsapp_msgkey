#!/usr/bin/env bash

#versao1.0
linha="--------------------"

echo $linha $linha
echo "| verificando as msgkey, elas pesam muito"
echo "| e nao servem pra nada..."
sleep 1.5
cd /sdcard/?hats?pp/?atabases

#testa se tem algum arquivo msg story na pasta database
#redireciona a saida de erro(caso aja) pra lugar nenhum com o dev/null
if test -n "$(ls msg* 2>/dev/null)" ; then
    echo -n "| os msgkey estão ocupando: "
    sleep 0.5;du -h | tail -1
    sleep 1.5
    echo "| pesos e nomes: "
    du -h *
    sleep 1.5
    read -p "| vc quer se livrar deles? s/n >" limbo

      if test $limbo = s ; then
          echo "| removendo...";sleep 1.0
          rm msg*
          echo -n "| pronto : "
          echo `du -h | tail -1` de arquivos restantes na pasta...

      elif test $limbo = n ; then
          sleep 1.5;echo "| ok, nada sera apagado.";sleep 1.5
      else
          sleep 1.5
          echo "| nao reconhecidos a letra s ou n."
          sleep 1.5
          echo -n "| abortando a \"msgkey extermination mission\""
          echo -n "." ; echo -n `sleep 1.0`
          echo -n "." ; echo -n `sleep 1.0`
          echo "."
      fi

else
    sleep 1.0
    echo "| não tem nenhum arquivo msgstory ocupando espaço"
fi
echo $linha $linha
sleep 0.4

#termino da  parte 1 -----------------
echo;echo
#parte 2 -----------------------------

sleep 0.4
echo $linha $linha
cd /sdcard/WhatsApp/Backups

echo "| procurando o stickers.db ..."
sleep 1.0

if test -e stickers* ; then
    echo "| stickerkey encontrado:"
    sleep 0.5
    echo "|++++++\\"
    echo "| `du -h stickers* | tail -1`"
    echo "|++++++/"
    sleep 1.0
    read -p "| vc quer apagar o arquivo? s/n >" limbo2

      if test $limbo2 = s; then
          echo "| removendo..."
          sleep 0.5
          rm stickers*
          echo "| pronto"

      elif test $limbo2 = n; then
         sleep 1.0; echo "| ok, nada sera apagado";sleep 1.0

      else
          echo "| não digitou sim, nao digitou não -;-)"
          sleep 1.0
          echo "| nada sera feito" ; sleep 1.0
          echo "| Hey there! I am using whatsapp"
      fi
else
    echo "| stickerskey não encontrado..."
fi

echo $linha $linha
sleep 0.4

#termino da  parte 2 -----------------
echo;echo
#parte 3 -----------------------------

sleep 0.4
echo $linha $linha
echo "| entrando na pasta Shared.."
cd /sdcard/WhatsApp/.Shared
sleep 1.0

if test -n "$(ls)"; then
   echo "| encontrei alguns arquivos"
   sleep 1.5
   echo -n "| os arquivos em \".Shared\" estão ocupando: "
   sleep 0.5 ; du -h ; sleep 1.0
   read -p "| deseja removelos? s/n >" limbo3

     if test $limbo3 = s; then
         sleep 0.5
         echo "| removendo arquivos"
         rm * # <não estou apagando teu sistema, fica frio ai

     elif test $limbo3 = n; then
         sleep 1.5;echo "| ok, nada sera apagado.";sleep 1.5

     else
         sleep 0.5
         echo "| vc digitou algo diferente de s ou n";sleep 1.0
         echo -n "| ocasionando o erro 404"
         echo -n "." ; sleep 1.0
         echo -n "." ; sleep 1.0
         echo -n "." ; sleep 1.0
         echo " piada não encontrada"
     fi

else
   echo "|"
   echo "| .Shared esta vazio, então parabens kk";sleep 0.5
   echo "| a pasta shared demora a recriar os arquivos";sleep 0.5
   echo "| e os arquivos pesam pouco cada um";sleep 0.5
   echo "| entao espere uns 15 dias...";sleep 0.5
   echo "| ou quando estiverem pesando muito ^^>"
fi

sleep 0.5
echo $linha $linha

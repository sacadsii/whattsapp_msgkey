#!/usr/bin/env bash

echo "esse script serve pra mover o arquivo
wppkey.sh para a pasta bin do seu termux
apos isso, vc ira poder usar o script apenas digitando
wppkey normalmemte em qualquer lugar (pasta que vc estiver) do seu termux.
Caso vc queira tornar o comando wppkey nativo no seu termux digite s, caso nao queira, digite n."
read -p "?" resposta

if [[ $resposta == "n" ]]; then
   echo "ok, nada sera feito"
elif [[ $resposta == "s" ]]; then
   cp wppkey.sh ~/../usr/bin/
   cd ~/../usr/bin/
   mv wppkey.sh wppkey
   chmod +x wppkey
else
   echo "digite s ou n, minusculas"
fi

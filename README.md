# whattsapp_extermination_msgkey
2 scripts, os 2 fazem a mesma coisa. Um dedicado a usuários mais leigos, e outro para ser prático.

whatsapp_msgkey.sh - um dos script é simples e vai interagindo com o usuário via s ou n, ele exclui ou não os arquivos inúteis(de cache) em diversas pastas relacionadas ao whatsapp. Para executar basta digitar bash whatsapp_msgkey.sh no Termux ou outro terminal do android.

Wppkey.sh - No script prático vc deve colocar os parametros -s -b ou -d após digitar o comando para executar o script.

Ex:
  bash wppkey.sh -sd esse comando ira escluir o cache da pasta shared e Databases do whatsapp assim que executado.
bash wppkey.sh -ds ira fazer o mesmo que o comando acima, pois a ordem ou quantidade de parâmetros não importa.

-s limpa a pasta /sdcard/WhatsApp/.Shared

-d limpa a pasta /sdcard/WhatsApp/Databases/
(Alguns arquivos na verdade só)

-b limpa o arquivo /sdcard/WhatsApp/Backups/stickers.db
(Só ele pode ocupar até 200mb, inútil)


Um 3º script serve para tornar o comando wppkey nativo no termux.

Basta escrever bash tornar_nativo.sh e ele lhe dira o que fazer.
Após isso, o comando wppkey estara nativo (como o ls, cd, rm, mkdir, etc) em qualquer lugar do seu termux. Para usar siga as mesmas regras do script wppkey.sh, mas não precisa colocar bash e nem .sh antes e depois do arquivo.
Ex
wppkey -sbd

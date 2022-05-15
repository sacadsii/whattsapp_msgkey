# whattsapp_msgkey
2 scripts, os 2 fazem a mesma coisa. Um é dedicado aos usuários mais leigos, e outro para ser prático.

~ whatsapp_msgkey.sh - um dos script é simples e vai interagindo com o usuário via s ou n, ele exclui ou não os arquivos inúteis(de cache) em diversas pastas relacionadas ao whatsapp.  
Para executar, va dentro da pasta do script no Termux e digite:  
bash whatsapp_msgkey.sh


~ Wppkey.sh - No script prático vc deve colocar os parametros -s -b ou -d após digitar o comando para executar o script.

Ex:  
bash wppkey.sh -sd  
Esse comando ira excluir o cache da pasta shared e Databases do whatsapp assim que executado.  
Os parametros são:  
  -s limpa a pasta /sdcard/WhatsApp/.Shared  
  -d limpa a pasta /sdcard/WhatsApp/Databases/  
      (Alguns arquivos na verdade, ele deixa um para caso vc precise restaurar um backup)  

  -b limpa o arquivo /sdcard/WhatsApp/Backups/stickers.db  
      (Só ele pode ocupar até 200mb, não se preocupe é um backup, seus stickers vão estar no seu whatsapp quando voce abrir ele novamente)


Um 3º script serve para tornar o comando wppkey nativo no termux.

Basta escrever bash tornar_nativo.sh e ele lhe dira o que fazer.  
Após isso, o comando wppkey estara nativo (como o ls, cd, rm, mkdir, etc) em qualquer lugar do seu termux. Para usar siga as mesmas regras do script wppkey.sh, mas não precisa colocar bash e nem .sh antes e depois do arquivo.  
Ex:  
wppkey -sbd 

Obs: Termux para muitos celulares esta sendo descontinuado(inclusive não o utilizo mais), se seu termux ainda funciona, parabens, infelizmente esse script não funciona sem ser no app Termux.

Qualquer coisa me chame no telegram

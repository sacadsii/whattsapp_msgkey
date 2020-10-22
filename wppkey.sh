#!/usr/bin/env bash

#1.0
while getopts dbs valor; do
case "$valor" in

   d) cd /sdcard/WhatsApp/Databases
        if [[ -n "$(ls msg* 2>/dev/null)" ]] ; then
           echo "apagado $(du -h | tail -1)"
           rm msg*
        else
           echo "nenhum arquivo databases"
        fi

   ;;
   b) cd /sdcard/WhatsApp/Backups
        if [[ -n "$(ls stickers* 2>/dev/null)" ]] ; then
           echo "apagado $(du -h stickers* | tail -1)"
           rm stickers*
        else
           echo "nenhum arquivo stickers"
        fi

   ;;
   s) cd /sdcard/WhatsApp/.Shared
        if [[ -n "$(ls 2>/dev/null)" ]] ; then
           echo "apagado $(du -h | tail -1)"
           cd ..
           rm -rf .Shared/
           mkdir .Shared
        else
           echo "nenhum arquivo em shared"
        fi

   ;;
esac
done

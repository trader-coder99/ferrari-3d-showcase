#!/bin/sh
# Baixa os arquivos gerados no Magnific (precisa do pikaso.cdnpk.net liberado na rede)
cd "$(dirname "$0")"
set -e
dl(){ curl -sSL --retry 3 -o "$1" "$2"; echo "ok $1 $(stat -c%s "$1")"; }
dl frame-inicial.png "https://pikaso.cdnpk.net/private/production/5717730988/render.png?token=exp=1792108800~hmac=4dc7d4348283c3b79fbf8b1a89637283325ef714186ad1525a085d6949dd54c4"
dl cena1-bruta.mp4 "https://pikaso.cdnpk.net/private/production/5718024205/6fc9d957-9c72-4d33-aa73-1887328499e6-0.mp4?token=exp=1792108800~hmac=dce09131bdb54abbbfd6159ef38b513c54e57866461daa99981fcbce0a9d4c60"
dl cena2-bruta.mp4 "https://pikaso.cdnpk.net/private/production/5718153382/61b2c63e-b95e-484f-a3cf-7811ca2feade-0.mp4?token=exp=1792108800~hmac=ef43a11b7a74753456085f356e098d565855518d3e75f3b4b1f16d01580e8fc0"
dl cena3-bruta.mp4 "https://pikaso.cdnpk.net/private/production/5718225414/2de34d7d-76de-475e-a668-61ee2b5a7a6b-0.mp4?token=exp=1792108800~hmac=a5eda5e058554b6267b71ac9714bf82ec3bb15380ad8d3142511276f070cd807"
dl foto-interna.png "https://pikaso.cdnpk.net/private/production/5718257347/render.png?token=exp=1792108800~hmac=6e6a453b3bcc61c330146c6f871a20b5f571436cf37952bd87fd9c756c3a67cf"
dl foto-fachada.png "https://pikaso.cdnpk.net/private/production/5718257673/render.png?token=exp=1792108800~hmac=4a9bf1866e058b31bed68b367e6729c4159c12b703c736162479891967528c5f"
dl foto-madeira-metal.png "https://pikaso.cdnpk.net/private/production/5718265531/render.png?token=exp=1792108800~hmac=62e92f75ffde131b62da80cff4675243ae664997981b091f2fc7cc1de5c48966"
dl foto-tingimento.png "https://pikaso.cdnpk.net/private/production/5718264766/render.png?token=exp=1792108800~hmac=382d20b1b7ba5985ff121f1775ede3ea984a020d89d6613e963ea130c1878a1e"

#!/usr/bin/env bash
#

# 青龙一键安装脚本
TIME() {
[[ -z "$1" ]] && {
	echo -ne " "
} || {
     case $1 in
	r) export Color="\e[31;1m";;
	g) export Color="\e[32;1m";;
	b) export Color="\e[34;1m";;
	y) export Color="\e[33;1m";;
	z) export Color="\e[35;1m";;
	l) export Color="\e[36;1m";;
      esac
	[[ $# -lt 2 ]] && echo -e "\e[36m\e[0m ${1}" || {
		echo -e "\e[36m\e[0m ${Color}${2}\e[0m"
	 }
      }
}
echo
echo
echo
TIME l "安装依赖..."
echo
TIME y "安装依赖需要时间，请耐心等待!"
echo
sleep 3
echo
echo
npm install -g cnpm --registry=https://registry.npmmirror.com
cd /ql
TIME l "安装依赖npm..."
cnpm install -g npm
cd /ql
TIME l "安装依赖png-js..."
cnpm install -g png-js
cd /ql
TIME l "安装依赖date-fns..."
cnpm install -g date-fns
cd /ql
TIME l "安装依赖axios..."
cnpm install -g axios
cd /ql
TIME l "安装依赖crypto-js..."
cnpm install -g crypto-js
cd /ql
TIME l "安装依赖md5..."
cnpm install -g md5
cd /ql
TIME l "安装依赖ts-md5..."
cnpm install -g ts-md5
cd /ql
TIME l "安装依赖tslib..."
cnpm install -g tslib
cd /ql
TIME l "安装依赖@types/node..."
cnpm install -g @types/node
cd /ql
TIME l "安装依赖requests..."
cnpm install -g requests
cd /ql
TIME l "安装依赖tough-cookie..."
cnpm install -g tough-cookie
cd /ql
TIME l "安装依赖jsdom..."
cnpm install -g jsdom
cd /ql
TIME l "安装依赖download..."
cnpm install -g download
cd /ql
TIME l "安装依赖tunnel..."
cnpm install -g tunnel
cd /ql
TIME l "安装依赖fs..."
cnpm install -g fs
cd /ql
TIME l "安装依赖ws..."
cnpm install -g ws
cd /ql
TIME l "安装依赖form-data..."
cnpm install -g form-data
cd /ql
TIME l "安装依赖requests..."
pip3 install requests
cd /ql
TIME l "安装依赖PyExecJS..."
pip3 install PyExecJS
cd /ql
TIME l "安装依赖moment..."
cnpm install -g moment
cd /ql
TIME l "安装依赖js-base64..."
cnpm install -g js-base64
cd /ql
TIME l "安装依赖..."
cd /ql/scripts/ && apk add --no-cache build-base g++ cairo-dev pango-dev giflib-dev && cnpm i && cnpm i -S ts-node typescript @types/node date-fns axios png-js canvas --build-from-source
cd /ql
TIME l "安装依赖..."
apk add --no-cache build-base g++ cairo-dev pango-dev giflib-dev && cd scripts && cnpm install canvas --build-from-source
cd /ql
TIME l "安装依赖..."
apk add python3 zlib-dev gcc jpeg-dev python3-dev musl-dev freetype-dev
cd /ql
echo
TIME g "依赖安装完毕..."
echo
exit 0

#!/bin/bash

VPN_CON_NAME="CONNECTIONNAME"
CONN_ARG=$1

if [ $CONN_ARG == "connect" ]; then
  FIX_PW="FIXED_PASSWORD"
  SECRET="2FA_SECRET"
  AUTH_CODE=`oathtool --totp=sha1 -b $SECRET`
  PW=$FIX_PW$AUTH_CODE
  echo $PW | /usr/bin/nmcli c up $VPN_CON_NAME --ask
elif [ $CONN_ARG == "disconnect" ]; then
  /usr/bin/nmcli c down $VPN_CON_NAME
else
  echo "no or unknown argument"
fi

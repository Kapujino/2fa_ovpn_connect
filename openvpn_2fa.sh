#!/bin/bash
VPN_CON_NAME="CONNECTIONNAME"
if [ -z `nmcli -g GENERAL.STATE con show $VPN_CON_NAME` ]; then
    FIX_PW="FIXED_PASSWORD"
    SECRET="2FA_SECRET"
    AUTH_CODE=`oathtool --totp=sha1 -b $SECRET`
    PW=$FIX_PW$AUTH_CODE
    notify-send 'Connecting Infront VPN' 'NetworkManager should establish the VPN connection' --icon=dialog-information
    echo $PW | /usr/bin/nmcli c up $VPN_CON_NAME --ask
elif [ `nmcli -g GENERAL.STATE con show $VPN_CON_NAME` == "activated" ]; then
    /usr/bin/nmcli c down $VPN_CON_NAME
    notify-send 'Disconnecting Infront VPN' 'NetworkManager should disconnect the VPN connection' --icon=dialog-information
else
    echo "no or unknown argument"
fi

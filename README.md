# 2fa_ovpn_connect

Script to generate 2FA code and use it with a fixed password to connect to openvpn

## DEPENDENCIES

* networkmanager
* oathtool

## USAGE

* edit `VPN_CON_NAME` with the networkmanager connection name
* edit `FIX_PW` with your fixed password
* edit `SECRET` with your 2fa secret
* run the script with either `connect` or `disconnect` as parameter

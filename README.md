# 2fa_ovpn_connect

Script to generate 2FA code and use it with a fixed password to connect to openvpn

## DEPENDENCIES

* networkmanager
* oathtool

## USAGE

* edit `CONNECTIONNAME` with the networkmanager connection name
* edit `FIXED_PASSWORD` with your fixed password
* edit `2FA_SECRET` with your 2fa secret
* run the script (it will connect when the VPN connection is not established and vice versa)

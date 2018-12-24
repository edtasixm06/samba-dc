#! /bin/bash
# @edt ASIX M06 2018-2019
# instal.lacio
# -------------------------------------
rm /etc/samba/smb.conf
samba-tool domain provision --server-role=dc --use-rfc2307 --dns-backend=SAMBA_INTERNAL --realm=MYSAMBA.EDT.ORG --domain=EDT --adminpass=Passw0rd
cat /etc/hosts
# editar i posar al hosts el nom simple
# copiar el krb5.conf a /etc


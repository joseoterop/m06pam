#! /bin/bash
# @edt ASIX M06 2018-2019
# instal.lacio
#  - crear usuaris locals
# -------------------------------------
useradd exam01
useradd exam02
useradd exam03
echo "exam01" | passwd --stdin exam01
echo "exam02" | passwd --stdin exam02
echo "exam03" | passwd --stdin exam03


bash /opt/docker/auth.sh
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/ldap.conf /etc/openldap/ldap.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/system-auth-jose /etc/pam.d/system-auth-jose
cp /opt/docker/pam_mount.conf.xml /etc/security/pam_mount.conf.xml
ln -sf /etc/pam.d/system-auth-jose /etc/pam.d/system-auth


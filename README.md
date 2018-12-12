### Examen PAM m06

El examen contiene un cliente capaz de conectarse a una base de datos externa ldap y autenticar contra ella.
la imagen del docker contiene:

usuarios locales

```
exam01:exam01
exam02:exam02
exam03:exam03
```
usuarios ldap

```
anna:anna
pere:pere
```
la base de datos remota funciona con  dc=edt,dc=org **tipica de clase.**
**usar la misma red para ambos contenedores**

se modifica system-auth y pam_mount.conf.xml para montar un tmpfs de 100M

```
<volume user="*" fstype="tmpfs" mountpoint="~/tmp" options="size=100M,uid=%(USER),mode=0755" />
```

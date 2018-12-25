# SAMBA DC Active Directory
## @edt ASIX M06 2018-2019

Podeu trobar les imatges docker al Dockehub de [edtasixm06](https://hub.docker.com/u/edtasixm06/)

Podeu trobar la documentació del mòdul a [ASIX-M06](https://sites.google.com/site/asixm06edt/)


ASIX M06-ASO Escola del treball de barcelona

### Imatges:

* **edtasixm06/samba:18dc** Servidor SAMBA Domain Controler, ldap internel.


#### Execució

```
docker run --rm --name mysamba.edt.org -h mysamba.edt.org --net sambanet --privileged -it edtasixm06/samba:18dc
```

#### Shares d'exemple

```

```


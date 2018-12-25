# @edt ASIX-M11 Curs 2017-2018
# kserver
# servidor kerberos
# --------------------------------
FROM fedora:27
MAINTAINER asixm11@edt "@edt ASIX-M11 Curs 2018-2019"
RUN dnf -y install procps krb5-server krb5-libs krb5-workstation
RUN mkdir /opt/docker
COPY * /opt/docker/
COPY krb5.conf /etc/krb5.conf
COPY kdc.conf /var/kerberos/krb5kdc/kdc.conf
COPY kadm5.acl /var/kerberos/krb5kdc/kadm5.acl
RUN  /usr/sbin/kdb5_util create -s -P masterkey
RUN  /usr/sbin/kadmin.local -q "addprinc -pw kpere pere"
RUN  /usr/sbin/kadmin.local -q "addprinc -pw kanna anna"
RUN  /usr/sbin/kadmin.local -q "addprinc -pw kmarta marta"
RUN  /usr/sbin/kadmin.local -q "addprinc -pw kmarta marta/admin"
RUN  /usr/sbin/kadmin.local -q "addprinc -pw kpau pau"
RUN  /usr/sbin/kadmin.local -q "addprinc -pw kjulia julia"
RUN  /usr/sbin/kadmin.local -q "addprinc -pw kjordi jordi"
RUN  /usr/sbin/kadmin.local -q "addprinc -randkey host/kssh"
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker 
CMD ["/opt/docker/startup.sh"]


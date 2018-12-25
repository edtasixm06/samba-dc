#! /bin/bash
COPY  /opt/docker/krb5.conf /etc/krb5.conf
COPY  /opt/docker/kdc.conf /var/kerberos/krb5kdc/kdc.conf
COPY  /opt/docker/kadm5.acl /var/kerberos/krb5kdc/kadm5.acl
RUN  /usr/sbin/kdb5_util create -s -P masterkey
RUN  /usr/sbin/kadmin.local -q "addprinc -pw kpere pere"
RUN  /usr/sbin/kadmin.local -q "addprinc -pw kanna anna"
RUN  /usr/sbin/kadmin.local -q "addprinc -pw kmarta marta"
RUN  /usr/sbin/kadmin.local -q "addprinc -pw kmarta marta/admin"
RUN  /usr/sbin/kadmin.local -q "addprinc -pw kpau pau"
RUN  /usr/sbin/kadmin.local -q "addprinc -pw kjulia julia"
RUN  /usr/sbin/kadmin.local -q "addprinc -pw kjordi jordi"
RUN  /usr/sbin/kadmin.local -q "addprinc -randkey host/kssh"


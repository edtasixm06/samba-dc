# Version: 0.0.1
# @edt M06 2018-2019
# samba
# -------------------------------------
FROM fedora:27
LABEL author="@edt ASIX M06-ASO"
LABEL description="SAMBA server 2018-2019"
RUN dnf -y install procps samba samba-client samba-dc krb5-workstation
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]


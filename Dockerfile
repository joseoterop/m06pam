# Version: 0.0.1
# @edt M06 2018-2019
# hostpam
# -------------------------------------
FROM edtasixm06/exam:latest
LABEL author="@joterop alumne edt"
LABEL description="host PAM 2018-2019"
RUN dnf -y install procps passwd openldap-clients nss-pam-ldapd authconfig pam_mount tree
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]

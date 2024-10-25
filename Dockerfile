FROM centos:7

RUN sed -i s/mirror.centos.org/vault.centos.org/g /etc/yum.repos.d/CentOS-*.repo && \
    sed -i s/^#.*baseurl=http/baseurl=http/g /etc/yum.repos.d/CentOS-*.repo && \
    sed -i s/^mirrorlist=http/#mirrorlist=http/g /etc/yum.repos.d/CentOS-*.repo && \
    yum groupinstall -y "Development Tools"
    
WORKDIR /root
RUN curl -fsSL https://xmake.io/shget.text | bash && source ~/.xmake/profile

CMD ["tail", "-f", "/dev/null"]

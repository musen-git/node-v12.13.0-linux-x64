FROM registry.cn-beijing.aliyuncs.com/app-and-cluster/centos:7
MAINTAINER  "merp"
WORKDIR /usr/local/node-v12.13.0-linux-x64
## install JDK
    COPY ./node-v12.13.0-linux-x64 /usr/local/node-v12.13.0-linux-x64/
    RUN echo "registry = https://registry.npm.taobao.org" >/root/.npmrc 
    #CMD ["systemctl disable firewalld.service"]
    #CMD ["rpm -e kernel"]
    #CMD ["yum -y remove bind-libs  bind-libs-lite dhclient dhcp-common  dhcp-libs dracut-network e2fsprogs e2fsprogs-libs ebtables ethtool file firewalld freetype gettext gettext-libs groff-base grub2 grub2-tools grubby initscripts iproute iptables kexec-tools libcroco libgomp libmnl libnetfilter_conntrack libnfnetlink libselinux-python lzo libunistring os-prober python-decorator python-slip python-slip-dbus snappy sysvinit-tools which linux-firmware GeoIP firewalld-filesystem qemu-guest-agent"]
#/etc/profile
    ENV NODE_VERSION=v12.13.0
    ENV NPM_VERSION=6.12.0
    ENV NODE_HOME /usr/local/node-v12.13.0-linux-x64
    ENV PATH $PATH:$NODE_HOME/bin

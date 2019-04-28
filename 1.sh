#!usr/bin/bash
yum -y install epel-release
setenforce 0
systemctl stop firewalld
systemctl disable firewalld
sed -ri s/^SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config
sed -ri s/^#baseurl/baseurl/g /etc/yum.repos.d/CentOS-Base.repo
sed -ri s/^mirrorlist/#mirrorlist/g /etc/yum.repos.d/CentOS-Base.repo
sed -ri s/^#baseurl/baseurl/g /etc/yum.repos.d/epel.repo
sed -ri s/^metalink/#metalink/g /etc/yum.repos.d/epel.repo
yum update -y
yum clean all
yum makecache
yum install net-tools -y
yum -y install vim
yum -y install bash-completion
yum -y install wget lsof unzip
yum -y install lrzsz-0.12.20-36.el7.x86_64
yum -y install ntp ntpdate
ntpdate cn.pool.ntp.org
ntpdate -b ntp1.aliyun.com


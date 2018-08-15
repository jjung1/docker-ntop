FROM centos:latest
RUN yum -y update && \
    yum -y install epel-release && \
    yum --enablerepo=epel install redis ntopng hiredis-devel && \

EXPOSE 3000

CMD ["ntopng -F "es;flows;ntopng-%Y.%m.%d;https://172.16.100.74:9200/_bulk;""]

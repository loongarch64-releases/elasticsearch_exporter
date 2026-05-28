FROM lcr.loongnix.cn/library/debian:unstable

RUN apt update && apt install -y git \
    golang \
    make \
    libseccomp-dev \
    wget \
    build-essential \
    curl \
    nodejs \
    npm

ENV ELASTICSEARCH_EXPORTER_VERSION=''

CMD ["sh", "-c","/workspace/process_version.sh $ELASTICSEARCH_EXPORTER_VERSION"]

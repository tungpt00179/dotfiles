from centos:7

run yum install -y \
    autoconf \
    libtool \
    bash \
    git \
    curl \
    gcc \
    gcc-c++ \
    make \
    wget

run wget https://storage.googleapis.com/golang/go1.10.5.linux-amd64.tar.gz -O - | tar -zxv -C /usr/local/ && \
    mkdir ~/go && \
    echo 'export GOPATH=~/go' >> ~/bashrc && \
    echo 'export PATH=/usr/local/go/bin:$PATH' >> ~/.bashrc && \
    echo 'export PATH=$GOPATH/bin:$PATH' >> ~/.bashrc

env GOPATH=/root/go
env PATH=/usr/local/go/bin:/root/go/bin:/usr/bin:/usr/sbin:/usr/local/bin
run mkdir -p /root/go/bin

run curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
run cp /root/go/bin/dep /bin/

run mkdir -p /usr/src/protobuf && cd /usr/src/protobuf && \
    git clone https://github.com/google/protobuf.git . && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install && \
    ldconfig

run go get github.com/golang/mock/gomock && \
    go get github.com/golang/mock/mockgen && \
    go get -u github.com/golang/protobuf/proto && \
    go get -u github.com/golang/protobuf/protoc-gen-go && \
    mv ~/go/bin/mockgen /bin && \
    mv ~/go/bin/protoc-gen-go /bin

COPY       build.sh /bin
RUN        chmod +x /bin/build.sh

ENTRYPOINT     ["build.sh"]

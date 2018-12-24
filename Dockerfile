from centos

run yum update -y && \
    yum install -y  epel-release && \
    yum install -y nodejs git wget file which make gcc gcc-c++ 

# install yottadb
run mkdir ~/ydb/ && \
    wget -P ~/ydb/ https://gitlab.com/YottaDB/DB/YDB/raw/master/sr_unix/ydbinstall.sh && \
    cd  ~/ydb/ && \
    chmod +x ydbinstall.sh && \
    ./ydbinstall.sh --utf8 default --verbose --force-install && \
    date

# install nodem
run bash -c '. /usr/local/lib/yottadb/r122/ydb_env_set  && \
    npm install nodem'

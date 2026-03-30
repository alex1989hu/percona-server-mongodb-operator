FROM docker.io/percona/percona-server-mongodb-operator:1.20.1
# GOOS=linux GOARCH=amd64 GOAMD64=v2 go build -trimpath -o percona-server-mongodb-operator -ldflags="-buildid= -w -s" cmd/manager/main.go
COPY percona-server-mongodb-operator /usr/local/bin/percona-server-mongodb-operator

LABEL org.opencontainers.image.source=https://github.com/alex1989hu/percona-server-mongodb-operator
LABEL org.opencontainers.image.title=percona-server-mongodb-operator
LABEL org.opencontainers.image.url=https://github.com/alex1989hu/percona-server-mongodb-operator
LABEL org.opencontainers.image.version=1.20.1-9

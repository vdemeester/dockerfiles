FROM       golang:1.7
RUN        go get github.com/dnephin/filewatcher && \
           cp /go/bin/filewatcher /usr/bin/ && \
           rm -rf /go/src/* /go/pkg/* /go/bin/*
ENTRYPOINT ["/usr/bin/filewatch"]

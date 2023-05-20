FROM quay.io/projectquay/golang:1.20 as builder
WORKDIR /go/src/app

ARG build_type
ENV build_type $build_type

COPY . .
RUN make $build_type

FROM scratch
WORKDIR /
COPY --from=builder /go/src/app .
COPY --from=alpine:latest /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
ENTRYPOINT ["/kbot"]
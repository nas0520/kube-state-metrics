ARG政府=1.22
阿根廷戈阿奇
参数GOARCH=adm64
FROM golang:${GOVERSION}作为构建者
阿根廷戈阿奇
环境GOARCH=${GOARCH}
工作目录/go/src/k8s.io/kube-state-metrics/
复制 ./go/src/k8s.io/kube-state-metrics/

运行make build-local

来自gcr.io/distroless/static:latest-${GOARCH}
复制--from=builder /go/src/k8s.io/kube-state-metrics/kube-state-metrics /

用户

入口点[ “/kube-state-metrics”，“--port=8080”，“--telemetry-port=8081” ]

曝光 8080 8081

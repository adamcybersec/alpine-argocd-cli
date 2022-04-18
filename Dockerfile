# --- Download Argo CD CLI --- 
FROM alpine:latest as builder
WORKDIR /tmp
RUN apk update && apk upgrade && apk add curl && \
    curl -sSL -o /tmp/argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64 && \
    chmod +x /tmp/argocd

# --- Build NGINX ---
FROM alpine:latest
COPY --from=builder /tmp/argocd /usr/local/bin/argocd
CMD ["/bin/sh"]



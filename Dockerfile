FROM alpine:latest

RUN apk add --no-cache python3 py3-pip git gcc
ADD https://raw.githubusercontent.com/davido/bazel-alpine-package/master/david@ostrovsky.org-5a0369d6.rsa.pub \
    /etc/apk/keys/david@ostrovsky.org-5a0369d6.rsa.pub
ADD https://github.com/davido/bazel-alpine-package/releases/download/0.26.1/bazel-0.26.1-r0.apk \
    /tmp/bazel-0.26.1-r0.apk
RUN apk add /tmp/bazel-0.26.1-r0.apk
RUN rm -rf /tmp/*
RUN mkdir /app; touch /app/WORKSPACE
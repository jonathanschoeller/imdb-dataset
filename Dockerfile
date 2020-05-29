FROM gcr.io/google.com/cloudsdktool/cloud-sdk:alpine

ENV APP_HOME /app
RUN apk update
RUN apk --no-cache add bash curl pv

RUN curl -sL -o /usr/local/bin/shush \
    https://github.com/realestate-com-au/shush/releases/download/v1.3.1/shush_linux_amd64 \
 && chmod +x /usr/local/bin/shush

ENTRYPOINT ["/usr/local/bin/shush", "exec", "--"]

WORKDIR $APP_HOME

ADD . $APP_HOME

CMD ["auto/run"]

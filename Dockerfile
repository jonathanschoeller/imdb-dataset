FROM alpine:3.11

ENV APP_HOME /app
RUN apk update
RUN apk --no-cache add bash curl pv

WORKDIR $APP_HOME

ADD . $APP_HOME

CMD ["auto/run"]

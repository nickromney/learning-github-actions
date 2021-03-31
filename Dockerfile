ARG PROD_PACKAGES="libxml2 libxslt libpq tzdata nodejs shared-mime-info"

FROM ruby:2.7.2-alpine AS production

ARG PROD_PACKAGES

WORKDIR /app

RUN apk update && apk add --no-cache $PROD_PACKAGES
RUN echo "Europe/London" > /etc/timezone && \
        cp /usr/share/zoneinfo/Europe/London /etc/localtime

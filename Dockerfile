FROM python:3.9-alpine

RUN apk update

RUN apk add --no-cache --update \
  python3 \
  python3-dev \
  screen\
  bash\
  wget
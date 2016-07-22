FROM andyfangdz/alpine-glibc-python
ENV PYTHONUNBUFFERED 1
ENV ISDOCKERDEV True
RUN apk add --no-cache postgresql-dev build-base python-dev
RUN mkdir /requirements
WORKDIR /requirements
ADD requirements.txt /requirements/
RUN pip install -r requirements.txt

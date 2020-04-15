FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y software-properties-common \
    && apt-add-repository --yes --update ppa:ansible/ansible \
    && apt-get install -y --no-install-recommends ansible \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["ansible"]
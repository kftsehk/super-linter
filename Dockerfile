FROM github/super-linter:slim-latest

RUN apk add --no-cache \
    bash \
    ca-certificates \
    cargo \
    cmake \
    coreutils \
    curl \
    file \
    gcc \
    g++ \
    git git-lfs \
    gnupg \
    icu-libs \
    jpeg-dev \
    jq \
    krb5-libs \
    libc-dev libcurl libffi-dev libgcc \
    libintl libssl1.1 libstdc++ \
    libxml2-dev libxml2-utils \
    linux-headers \
    lttng-ust-dev \
    make \
    musl-dev \
    net-snmp-dev \
    npm nodejs-current \
    openjdk11-jre \
    openssh-client \
    openssl-dev \
    parallel \
    perl perl-dev \
    py3-setuptools python3-dev  \
    py3-pyflakes \
    R R-dev R-doc \
    readline-dev \
    ruby ruby-dev ruby-bundler ruby-rdoc \
    rustup \
    zlib zlib-dev

COPY lib /action/lib

FROM    alpine:latest

LABEL   maintainer="Shane Hutter <shane.hutter86@gmail.com>"

# Copy in system files
COPY    src/etc/apk/repositories        /etc/apk/repositories
COPY    src/usr/bin/entrypoint          /usr/bin/entrypoint
COPY    src/usr/bin/testhold            /usr/bin/testhold

RUN \
    apk update                      && \
    apk upgrade                     && \
    apk add npm                     \
            python3                 \
            gcompat                 \
            build-base              && \
    npm update --global             && \
    npm install ganache --global    && \
    apk del build-base
    

ENTRYPOINT [ "entrypoint" ]
#ENTRYPOINT [ "testhold" ]

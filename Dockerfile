FROM openresty/openresty:alpine

RUN apk add --no-cache apkbuild-cpan alpine-sdk perl-dev && \
    PERL_MM_USE_DEFAULT=1 cpan List::MoreUtils && \
    cpan App::Prove::State  && \
    cpan Test::Nginx

ENV PATH="/usr/local/openresty/nginx/sbin:${PATH}"

ENTRYPOINT prove

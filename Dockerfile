FROM macacajs/macaca-puppeteer-docker

MAINTAINER xdf <xudafeng@126.com>

WORKDIR src

ENTRYPOINT ["/src/entrypoint.sh"]

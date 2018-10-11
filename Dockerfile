FROM registry.docker-cn.com/macacajs/macaca-puppeteer-docker

MAINTAINER lcfevr <lcfevr@163.com>

WORKDIR src

ENTRYPOINT ["/src/entrypoint.sh"]

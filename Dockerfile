FROM node:14-slim

LABEL "com.github.actions.name"="vuepress-compiler"

RUN apt-get update && yarn global add vuepress

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
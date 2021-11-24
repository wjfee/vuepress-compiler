FROM node:14-slim

LABEL "com.github.actions.name"="vuepress-compiler"

RUN apt-get update && yarn add -g vuepress

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
FROM node:14-slim

LABEL "com.github.actions.name"="vuepress-compiler"

RUN apt update && apt install -y git jq && yarn global add vuepress && yarn global add @vuepress/plugin-google-analytics

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
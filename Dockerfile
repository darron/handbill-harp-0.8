FROM octohost/nodejs

RUN apt-get update && apt-get install -y curl && curl -s http://handbill-cache.handbill.io/harp/0.8/node_modules.tgz --output /root/node_modules.tgz
RUN mkdir /srv/www && cd /srv/www && tar -zxf /root/node_modules.tgz
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

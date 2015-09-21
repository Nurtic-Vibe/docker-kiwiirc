FROM google/nodejs-runtime

RUN ./kiwi build

EXPOSE 7778

ADD config.js ./config.js

ENTRYPOINT ["./kiwi", "-f", "start"]
CMD ["-c", "config.js"]

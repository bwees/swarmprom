FROM prom/node-exporter:v0.16.0

USER root

COPY conf /etc/node-exporter/
RUN ["chmod", "+x", "/etc/node-exporter/docker-entrypoint.sh"]


ENTRYPOINT  [ "/etc/node-exporter/docker-entrypoint.sh" ]
CMD [ "/bin/node_exporter" ]

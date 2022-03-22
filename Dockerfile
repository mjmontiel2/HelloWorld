# Start with OL runtime.
FROM open-liberty:22.0.0.3-full-java8-openj9

USER root

COPY --chown=1001:0 server.xml /config/
COPY --chown=1001:0 target/demo.war /config/dropins/
USER 1001

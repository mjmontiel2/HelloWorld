FROM websphere-liberty:kernel

COPY --chown=1001:0  target/demo.war /config/dropins/

COPY --chown=1001:0  server.xml /config/

RUN configure.sh
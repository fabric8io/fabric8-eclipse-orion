FROM fabric8/java

ENV GOGS_VERSION 0.5.13

RUN curl -o /tmp/orion.zip http://www.eclipse.org/downloads/download.php?file=/orion/drops/R-8.0-201502161823/eclipse-orion-8.0-linux.gtk.x86_64.zip && \
    cd /opt && unzip /tmp/orion.zip && \
    rm -rf /tmp/orion.zip

RUN chmod +x /opt/eclipse-orion/bin/orion

EXPOSE 8080

CMD ["/opt/eclipse-orion/bin/orion"]

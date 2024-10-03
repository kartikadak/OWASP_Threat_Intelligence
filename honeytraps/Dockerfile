FROM owasp/modsecurity-crs:apache
USER root
RUN apt update && apt install -y nano curl sudo python3-watchdog
COPY include.conf /etc/modsecurity.d/
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY robots.txt /usr/local/apache2/htdocs/
COPY index.html /usr/local/apache2/htdocs/
COPY login.html /usr/local/apache2/htdocs/
COPY modsecurity-extension.conf /app/modsecurity-extension.conf
COPY modsec_entry.sh /usr/local/apache2
RUN touch /var/log/modsec_audit_processed.log
RUN cat /app/modsecurity-extension.conf >> /etc/modsecurity.d/modsecurity.conf
EXPOSE 80/tcp 8000/tcp
CMD ["/usr/local/apache2/modsec_entry.sh"]

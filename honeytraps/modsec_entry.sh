# ~/bin/sh
apachectl
/usr/local/apache2/bin/httpd -D FOREGROUND
python3 /app/preprocess-modsec-log.py 

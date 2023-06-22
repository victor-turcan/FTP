cd /tmp/
apt-get install proftpd proftpd-mod-crypto wget -y
service proftpd stop
#supprime les fichiers de base
rm /etc/proftpd/proftpd.conf
rm /etc/proftpd/tls.conf
rm /etc/proftpd/modules.conf
#récupère les fichiers de config sur github et les placent dans le bon dossier
cd /etc/proftpd/
#créé la clé et le certificat
mkdir /etc/proftpd/ssl
openssl req -new -x509 -keyout /etc/proftpd/ssl/proftpd.key.pem -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem
#installe le mod de cryptage
service proftpd start

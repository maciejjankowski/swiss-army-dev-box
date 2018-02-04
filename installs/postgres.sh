echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -sc`-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-client-9.4 -y
# sudo apt-get install pgadmin3 -y


# Add bloodhound
wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -
echo 'deb https://debian.neo4j.com stable 4.0' > /etc/apt/sources.list.d/neo4j.list
sudo apt-get update
apt-get install apt-transport-https
sudo apt-get install neo4j
systemctl stop neo4j
echo " Start neo4j as a console application and verify it starts up without errors:"
echo "cd /usr/bin"
echo "./neo4j console"
echo "systemctl start neo4j"
echo "https://localhost:7474/ -- AUTH neo4j:neo4j"

apt-get install bloodhound


# Add bloodhound
apt-get install crackmapexec


# Add evil-winrm
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
gem install evil-winrm


sudo apt install bettercap
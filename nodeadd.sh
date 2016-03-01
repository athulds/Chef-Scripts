#Option 3 chef-client installation
#ssh to a machine and run this script
#---Athul Damodaran

scp 172.16.10.192:/root/Documents/chef-12.0.3-1.x86_64.rpm /var/tmp/
cd /var/tmp/
rpm -Uvh chef-12.0.3-1.x86_64.rpm
mkdir /etc/chef
scp 172.16.10.192:/root/.chef/chef-validator.pem /etc/chef/
knife ssl fetch -s https://chefsrvr.o3c.in
scp 172.16.10.192:/root/Documents/client.rb /etc/chef/
chef-client -S https://chefsrvr.o3c.in -K /etc/chef/chef-validator.pem


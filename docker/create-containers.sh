# Edit max virtual memory for ELK stack (max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144])
sudo sysctl -w vm.max_map_count=262144 

# Create folder structure
sudo mkdir -p /srv

# switch to srv directory
cd /srv

# Clone repository
sudo git clone https://github.com/jansvensen/ubuntu-docker-log.git

# switch to ubuntu-docker-log directory
cd /ubuntu-docker-log

# Remove existing containers
sudo docker-compose rm --stop --force

# Setup Docker containers
sudo docker-compose -f /srv/ubuntu-docker-log/docker-compose.yml up setup

# Create Docker containers
sudo docker-compose -f /srv/ubuntu-docker-log/docker-compose.yml up -d
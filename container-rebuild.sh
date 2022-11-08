sudo -E ./docker-compose down --volumes --rmi all
sudo -E ./docker-compose up -d
sudo -E docker exec -it smstools3 /bin/bash

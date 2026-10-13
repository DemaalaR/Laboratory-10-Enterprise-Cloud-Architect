Enterprise Cloud Architect - Operatinal Manual

1. Project Overview
This project deploys a WordPress web application and a MySQL database using Docker Compose on Ubuntu Server.

Components
. WordPress: Web application accessible through port 8080.
. MySQL: Database service used by WordPress.
. Docker Compose: Manages the application containers.
. Named Volumes: Persist WordPress files and MySQL database backups.
.Cron: Schedule automatic database backups every day at 2:00 AM Philippine time.

2. Accessing the Application

1. Ensure the Ubuntu virtual machine is running.
2. Confirm that the Docker containers are running.
3. Open a browser on th4. host computer.
4. Visit http;//localhost:8080 if port forwarding is configured, or use Ubuntu VM's IP address with port 8080 if the network configuration permits access.

3. Checking Container Status
Run the following command:
	docker ps
The enterprise-wordpress and enterprise-db containers should show a status of Up.

4. Starting and Stopping the Application
Go to the project directory:
	cd ~/enterprise-cloud
Start the application:
	docker compose up -d
Stop the application without deleting the containers or persistent volumes:
	docker compose stop
Restart stopped containers:
	docker compose start
To view lohs:
	docker compose logs --tail=50

5. Database Backup
Run a manual backup:
	~/enterprise-cloud/backup-db.sh
List available backup files:
	ls -lh ~/enterprise-cloud/backups/
The backup files ude timestamped names such as
	wordpress_YYYYMMDD_HHMMSS.sql.

6. Automated Backup Schedule
Check the schedule task:
	crontab -l
The configure backup runs daily at 2:00 AM Philippine time. Check the log with:
	tail -n 20 ~/enterprise-cloud/backups/cron.log

7. Troubleshooting
. If a container is stopped, inspect it with docker ps -a and review logs using docker logs enterprise-wordpress or docker logs enterprise-db.
. If a backup fails, check the database container status, backup script and MySQL credentials.
. If the Ubuntu VM freezes or reports watchdog: BUG: soft lockup, avoid repeated running commands. Check available memory and CPU resources after the VM becomes responsive.

8. Security and Maintenance
. Use strong, unique database password.
. Do not Commit password or other secrets to a public GitHub repository.
. Keep database backups in a protected location.
. Periodically verify that backups files are non-empty and that restoration procedures work.

9. Current Verification Status
. WorsPress and MySQL containers were observed running.
. Manual SQL database backup completed succesfully.
. The cron test executed successfully and was subsequently removed.
. The daily scheduled run still requires verification through its log after the next execution
















Enterprise Cloud Architect

Project Overview
This project deploys a WordPress web application and MYSQL database on Ubuntu Server using Docker Compose. It demonstrates containerization, persistent storage, firewall configuration, automated database backups, and operational documentation.

Architecture
The environment consists of:
. Windows 11 host running Oracle VirtualBox
. Ubuntu Server virtuar application deployment
. Docker Compose for application deployment
. WordPress container exposed on port 8080
. MySQL container for database storage
. Named Docker volumes for persistent data
.Bash script and cron for database backups

See docs/architecture.md for the architecture overview.

Prerequisites
. UbunTu Server
. Docker Engine
. Docker Compose plugin
. UFW firewall
. WordPress and MYSQL container images

Deployment
Go to the project directory:
	cd ~/enterprise-cloud
Validate the Compose configuration:
	docker compose config -q
Start the services:
	docker compose up -d
Check the containers:
	docker ps

Access WordPress through port 8080, using the appropriate host or VM IP address and network configuration.

Datase Backups
Run a manual backup:
	~/enterprise-cloud/backup-db.sh
List backup files:
	ls -lh ~/enterprise-cloud/backups/

The cron schedule is configured for a daily backup at 2:00 AM Philippines time. Check the schedule with:
	crontab -l

Firewall
The UFW firewall is enabled with a default policy of denying incoming connections and allowing outgoing connections. SSH and TCP port 8080 are allowed.
Check firewall status:
	sudo ufw status verbose

Documentation
	. docs/architecture.md - architecture and system components
	. docs/operational -manual.md - operational and troubleshooting instructions

Security Notes
. Use strong, unique database credentials.
. Never publish passwords or secrets in public repository
. Do not expose the database port unnecessarily.
. Keep backups protected and periodically test database restoration.


Verification Status
The WordPress and MySQL containers were observed running. The docker compose configuration passed validation, and manual database backups completed successfully.
The cron test also succeded and was removed. The daily schedule is configured, but its next schedule run still needs verification.
The Ubuntu Vm has reported watchdog: BUG: soft lockup warnings,so system stability should be monitored.

Academic Note
This project was completed as acloud ccomputing laboratory exercise. Update this README to reflect the environment, tests, and requirements specified by the instructor.




























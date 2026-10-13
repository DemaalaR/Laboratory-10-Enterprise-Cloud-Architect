Final Reflection - Enterprise Cloud Architect

What I learned
In this laboratory activity, I learned how to deploy a WordPress application and MYSQL database using Docker Compose on Ubuntu Server. I practiced checking
containers status, validating the compose configuration, and using persistent volumes to retaine apllication and database data.
I also learned how to create a Bash scrip for database backups and configure cron to run the script automatically. Testing the backup process helped me understand
the importance of checking backup files and reviewing logs.

Challenges Encountered

One chanllenge was troubleshooting the Ubuntu virtual machine, which occationally displayed soft
lockup warnings and became unresponsive. I also encountered issues while editing configuration 
files and verifiying the cron schedule.
I addressed these challenges by checking command outputs, reviewing logs, validating configuration files, and testing the backup
script manually before relying on automation.

Security and Reliability

I learned that cloud infrastructure requires more than simply running an application.
Firewall rules, secure database credentials, persistent storage, and regular backups are important for protecting data and maintainng availability.
The backup schedule was was configured, but the next daily scheduled execution still needs to be verified. The virtual 
machine's stability also requires further monitoring.

Conclusion

This activity helped me gain practical experience with containerized applications, Linux administration, automation, and technical documentaion.
It also taught me the importance of testing configuration and verifying results instead of assuming the service is working correctly.


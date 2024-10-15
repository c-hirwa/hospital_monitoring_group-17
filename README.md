# hospital_monitoring_group-17

Project Documentation: Hospital Data Handling and Monitoring System
Project Name: Hospital Heart Rate Monitoring and Log Management System
Group: Group 17
Repository Name: hospital_monitoring_groupX

Overview
This project is designed to manage heart rate data logging, log file archival, and secure backups for a hospital's upgraded system infrastructure. The system will record patient heart rate data in real-time, archive the log files with a timestamp, and back them up to a remote server for future access.

This project consists of three shell scripts that handle the following tasks:

1. Heart Rate Monitoring (heart_rate_monitor.sh)
2. Log Archival (archive_log.sh)
3. Archival and Backup to a Remote Server (backup_archives.sh)

Task 1: Heart Rate Monitoring Script (heart_rate_monitor.sh)
Description:
This script records heart rate data every second from a monitoring device. The data is logged in a file called heart_rate_log.txt, which includes a timestamp, device name, and a simulated heart rate value (randomized). The script runs as a background process.

Features:

Prompts the user for a device name (e.g., Monitor_A, Monitor_B).
Logs heart rate data every second.
Runs in the background, with its Process ID (PID) displayed for easy management.
Data is logged in the format: Timestamp, Device Name, Heart Rate.

Usage:
bash
chmod +x heart_rate_monitor.sh
./heart_rate_monitor.sh &

Sample Log Output:
yaml
2024-10-03 14:35:02 Monitor_A 61
2024-10-03 14:35:03 Monitor_A 67
2024-10-03 14:35:04 Monitor_A 48

Commands to Check Logs:
bash
tail -f heart_rate_log.txt

Task 2: Log Archival Script (archive_log.sh)
Description:
This script archives the heart rate log file (heart_rate_log.txt) by renaming it with a timestamp. The new file name format is: heart_rate_log.txt_YYYYMMDD_HHMMSS, where the timestamp represents the exact time of the archive.

Features:

Archives the current log file by appending a timestamp.
Ensures that heart_rate_log.txt is renamed properly.
Prevents overwriting by using unique timestamps.

Usage:
bash
chmod +x archive_log.sh
./archive_log.sh

Example Archived Log Name:
heart_rate_log.txt_20241003_143501

Task 3: Archival and Backup Script (backup_archives.sh)
Description:
This script moves the archived log files into a designated directory (archived_logs_groupX) and backs them up to a remote server using scp and SSH.

Features:

Moves all archived log files into the directory archived_logs_groupX.
Securely backs up the log files to a remote sandbox server using SSH.
Ensures proper file transfers and directory handling.
Backup Server Details:

Host: e3dcb13292b4.dc9c26bb.alu-cod.online
Username:  e3dcb13292b4
Destination Directory: /home/ on the remote server

Usage:
bash
chmod +x backup_archives.sh
./backup_archives.sh

File Structure
bash
/hospital_monitoring_groupX
├── heart_rate_monitor.sh
├── archive_log.sh
├── backup_archives.sh
└── README.md


Setup Instructions
Clone the repository:

bash
git clone https://github.com/your_username/hospital_monitoring_groupX.git
cd hospital_monitoring_groupX

Make the scripts executable:
bash
chmod +x heart_rate_monitor.sh archive_log.sh backup_archives.sh

Run each script as needed:

To start heart rate monitoring:
bash
./heart_rate_monitor.sh &

To archive the heart rate log file:
bash
./archive_log.sh

To back up the archived files to the remote server:
bash
./backup_archives.sh

Team Collaboration:

Commits and Branches: Multiple group members contributed to the project, with individual commits and branches demonstrating collaboration and teamwork.
Attendance Report: All members attended regular group meetings, discussed tasks, and committed code to the repository.

Submission Requirements:

Scripts: All required scripts (heart_rate_monitor.sh, archive_log.sh, backup_archives.sh) are included and properly named.
Access Rights: Correct access rights have been set using chmod +x for each script to ensure proper execution.
GitHub Repository: The repository is named hospital_monitoring_groupX as per submission guidelines.

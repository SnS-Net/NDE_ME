#!/bin/bash
done="------\nDONE!\n------"

echo 'Creating the main directory'
mkdir -p NDE_ME

echo 'Enter the main directory'
cd NDE_ME
echo "$done"

echo 'Creating subdirectories'
mkdir -p ansible/{roles/linux_config,roles/cisco_config} python/{runbooks/linux_config,runbooks/cisco_config,templates/linux,templates/cisco} bash/{automation_scripts,script_libraries,sample_configurations/linux_config,sample_configurations/cisco_config} docs
sleep 2
echo "$done"

echo 'Creating 5 empty README files'
touch README.md && echo '1'
touch ansible/README.md && echo '2'
touch python/README.md && echo '3'
touch bash/README.md && echo '4'
touch docs/README.md && echo '5'
echo "$done"

Create empty configuration files
touch ansible/ansible.cfg
touch ansible/inventory/inventory.ini
touch bash/best_practices.md
touch bash/integration_guide.md
touch docs/user_guide.md
touch docs/developer_guide.md
echo "$done"

# Sample code placeholders (you can replace these with actual code)
echo "# Ansible Linux Configuration" > ansible/roles/linux_config/tasks/main.yml
echo "# Ansible Cisco Configuration" > ansible/roles/cisco_config/tasks/main.yml
echo "# Python Runbook for Linux Configuration" > python/runbooks/linux_config/main.py
echo "# Python Runbook for Cisco Configuration" > python/runbooks/cisco_config/main.py
echo "# Bash Automation Script for Monitoring" > bash/automation_scripts/monitoring.sh
echo "# Bash Automation Script for Backup" > bash/automation_scripts/backup.sh
echo "# Bash Automation Script for Log Analysis" > bash/automation_scripts/log_analysis.sh
echo "# Bash Automation Script for Configuration Management" > bash/automation_scripts/config_management.sh
echo "$done"

echo "# Bash Script Library" > bash/script_libraries/utils.sh
echo "# Sample Linux Configuration" > bash/sample_configurations/linux_config/sample.conf
echo "# Sample Cisco Configuration" > bash/sample_configurations/cisco_config/sample.conf
echo "# User Guide" > docs/user_guide.md
echo "# Developer Guide" > docs/developer_guide.md
echo "$done"

echo "NDE_ME directory structure created with sample code placeholders."

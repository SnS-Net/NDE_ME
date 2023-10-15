#!/bin/bash

# Colors for echo statements
GREEN='\e[32m'
YELLOW='\e[33m'
NC='\e[0m'  # No color

# Create the NDE_ME directory
echo -e "${GREEN}Creating NDE_ME directory...${NC}"
mkdir -p NDE_ME

# Create Python directory structure
echo -e "${YELLOW}Creating Python directory structure...${NC}"
mkdir -p NDE_ME/python/runbooks/linux_config
mkdir -p NDE_ME/python/runbooks/cisco_config
mkdir -p NDE_ME/python/templates/linux
mkdir -p NDE_ME/python/templates/cisco
mkdir -p NDE_ME/python/inventory
touch NDE_ME/python/inventory/inventory.ini
touch NDE_ME/python/README.md

# Create Bash directory structure
echo -e "${YELLOW}Creating Bash directory structure...${NC}"
mkdir -p NDE_ME/bash/automation_scripts
touch NDE_ME/bash/automation_scripts/monitoring.sh
touch NDE_ME/bash/automation_scripts/backup.sh
touch NDE_ME/bash/automation_scripts/log_analysis.sh
touch NDE_ME/bash/automation_scripts/config_management.sh
mkdir -p NDE_ME/bash/script_libraries
touch NDE_ME/bash/script_libraries/utils.sh
mkdir -p NDE_ME/bash/sample_configurations/linux_config
mkdir -p NDE_ME/bash/sample_configurations/cisco_config
touch NDE_ME/bash/README.md
touch NDE_ME/bash/best_practices.md
touch NDE_ME/bash/integration_guide.md

# Create Docs directory
echo -e "${GREEN}Creating Docs directory...${NC}"
mkdir -p NDE_ME/docs
touch NDE_ME/docs/user_guide.md
touch NDE_ME/docs/developer_guide.md

# Create main README and other files
echo -e "${GREEN}Creating main README and other files...${NC}"
touch NDE_ME/README.md
touch NDE_ME/LICENSE
touch NDE_ME/.gitignore
touch NDE_ME/.gitattributes

echo -e "${GREEN}Directory structure created successfully!${NC}"

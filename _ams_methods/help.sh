#!/bin/sh

#  AUTOMATED MASTERNODE SETUP
#  Copyright © 2019 cryon.io
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU Affero General Public License as published
#  by the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU Affero General Public License for more details.
#
#  You should have received a copy of the GNU Affero General Public License
#  along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
#  Contact: cryi@tutanota.com

script_usage() {
    cat << EOF
                    == Automated Masternode Setup ==

Usage:
    -h|--help                           Displays this help message.

    -dau|--disable-auto-update          Removes auto update from cron job
    
    --user=[user]                       Creates user if not exists and starts docker from this user. (docker rights are asigned automatically)
    --node=[node type]                  Defines type of node to manage
    --stop                              Stops masternode
    -se=[env_var]|--set-env=[env_var]   Sets masternode env variable (Refer to per coin docs)
    -sp=[param]|--set-parameter=[param] Sets masternode parameter (Refer to per coin docs)
    --bind=[binding]                    Sets binding for specified port. 
                                        E.g.: --bind=127.0.0.1:3000:30305 # binds port 30305 from node to ip 127.0.0.1 port 3000
    --ams-branch=[branch]               Selets branch from AMS repository

    -f|--full                           Runs all of the commands below.

    -sd|--setup-dependencies            Installs masternode dependencies
    -gd|--grant-docker                  Adds CURRENT user into docker group, so you can control docker without sudo and autoupdate node
                                        # In case of --full arg, can be disabled by -dau
    -gd=[user]|--grant-docker=[user]    Adds SPECIFIC user into docker group, so you can control docker without sudo and autoupdate
                                        # In case of --full arg, can be disabled by -dau
    
    -b|--build                          Builds masternode based on node service definition 

    -nc|--no-cache                      Affects MN build
    -s|--start                          Starts masternode
    -r|--restart                        Restarts masternode (same as start + --force-recreate)
    
    -un|--update-node                   Updates core binary for masternode (through docker rebuild)
    -us|--update-service                Updates service definitions for masternode
    -uc|--update-ams           Updates this ams

    -rp|--restore-permissions           Restores required chmod +x and directory permissions
    -i|--node-info                      Prints node version
    -au|--auto-update                   Adds cron job for auto update
                                        * assigns docker rights for current user
    -au=[user]|--auto-update=[user]     Adds cron job for auto update to SPECIFIC user crontable
                                        * assigns docker rights for SPECIFIC user
                                        * same as --user=[user] --auto-update 

    EXAMPLES:
    # setup as root
    1. setup as root with autoupdate
    ./ams -f
    2. setup as root, running on [user] with autoupdate
    ./ams -f --user=[user]

    # setup as non root (requires sudo)
    1. setup as non root for current user with autoupdate
    sudo ./ams -f
    2. setup as non root, running on [user] with full auto update autoupdate
    sudo ./ams -f --user=[user] --aul=2

EOF
}
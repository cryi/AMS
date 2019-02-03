#!/bin/sh

#  AUTONOMOUS MASTERNODE SYSTEM
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

success() {
    printf "\033[0;32mSUCCESS: %s \033[0m\n" "$1"
}

info() {
    printf "\033[0;36mINFO: %s \033[0m\n" "$1"
}

warn() {
    printf "\033[0;33mWARN: %s \033[0m\n" "$1"
}

error() {
    printf "\033[0;31mERROR: %s \033[0m\n" "$1"
}
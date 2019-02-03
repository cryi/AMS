## AUTONOMOUS MASTERNODE SYSTEM (AMS) © cryon.io 2019

## Prerequisites 

1. 64-bit installation
2. 3.10 or higher version of the Linux kernel (latest is recommended)

(If you run on VPS provider, which uses OpenVZ, setup requires at OpenVZ 7)

### Supported OS

- Ubuntu 16.04+
- Fedora 26+
- CentOS 7
- Debian 7+

### Supported nodes

Check out wiki for list of [Supported Node Types](https://github.com/cryi/AMS/wiki/Supported-Node-Types). 

### Quickstart

Note: *All parameters inside [] has to be submitted without [], e.g. `--user=[user]` as `--user=etho`*

1. 1. `git clone "https://github.com/cryi/AMS.git" [path] && cd [path]` # replace path with directory you want to store node in
   2. `chmod +x ./ams`
2. one of commands below depending of your preference (run as *root* or use *sudo*)
    - `./ams --full --node=[node_type]` # full setup of specific node for current user
    - `./ams --full --user=[user] --node=[node_type] --auto-update-level=[level]` # full setup of specific node for defined user (directory location and structure is preserved), sets specified auto update level (Refer to [Autoupdates](https://github.com/cryi/AMS/wiki/Autoupdates))
    - `./ams --full --user=[user] --node=[node_type] --auto-update-level=[level] -se=ip=[IP address] -se=masternodeprivkey=[privkey]`
        * Refer to per coin documentation for usage of env variables and parameters (`-se=*|--set-env=*|-sp=*|--set-parameter=*`)
3. logout, login and check node status
    - `./ams --node-info`
4. Refer to specific node readme for node registration

#### Binding node IP and ports:

- `./ams --bind=[binding]`  #Sets binding for specified port. 
- Example: `--bind=127.0.0.1:3000:30305` # binds port 30305 from node to ip 127.0.0.1 port 3000 on machine
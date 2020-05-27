[![Build Status](https://drone.rknt.de/api/badges/rknt/rknt-server/status.svg)](https://drone.rknt.de/rknt/rknt-server)

## Bootstrapping

- [install docker-engine](https://docs.docker.com/engine/install/debian/)
- [install docker-compose](https://docs.docker.com/compose/install/)
- `git-crypt unlock`
- `docker network create traefik`

__Install Drone Exec Runner__

- create a user called `drone`
- add `drone` to `docker` group
- install exec runner according to [docs](https://docs.drone.io/runner/exec/installation/linux/)
  - create config in `/home/drone/.drone-exec-runner/config`:
    ```
    DRONE_RPC_PROTO=https
    DRONE_RPC_HOST=drone.rknt.de
    DRONE_RPC_SECRET=super-secret-sauce
    DRONE_HTTP_BIND=:3001
    DRONE_LOG_FILE=.drone-runner-exec/log.txt
    DRONE_LIMIT_TRUSTED=true
    DRONE_LIMIT_EVENTS=rknt/rknt-server
    ```
    _binding to port 3001 to avoid collision with docker runner_
  - `drone-exec-runner service install` 
  - define user and group in `/etc/systemd/system/drone-exec-runner.service`
    ```
    [Service]
    User=drone
    Group=drone
    ```
- set `rknt/rknt-server` repo to _trusted_ on https://drone.rknt.de

## Notes on Nextcloud

- needed to manually set `trusted_domain` in `config_php` as env setting didn't take hold
- `'overwriteprotocol' => 'https'` needed in `config.php` to allow initial password reset

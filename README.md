# valerianomanassero/docker-patchman-agent
A Docker container for Patchman Agent ( https://www.patchman.co ).


The image is based on a CentOS 7 image and contains Patchman Agent.


## Options

**Environment variables**

- KEY <Patchman license key>


**Volumes**

- patchman_web:/web
- patchman_conf:/patchman (Read Only)
- patchman_logs:/var/log/patchman
- patchman_data:/var/lib/patchman
- patchman_etc:/etc/patchman (Read Only)

patchman_web is the place where resides the domains filesystem to scan

patchman_conf is where you need to put files according to this guide https://patchman.zendesk.com/hc/en-us/articles/206434944-Using-Patchman-with-a-non-standard-control-panel

patchman_logs is the folder where patchman puts logs itself

patchman_etc is the folder where patchman puts license files (needed to persist the registration and avoid re-registering the node)

## Docker example usages

```
docker run -v - patchman_web:/web -v patchman_conf:/patchman:ro -v patchman_logs:/var/log/patchman -v patchman_data:/var/lib/patchman -v patchman_etc:/etc/patchman:ro -e KEY=<Patchman license key> -d valerianomanassero/patchman:<VERSION>
```

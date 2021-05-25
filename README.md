# A static site deployable in Docker container
The site is created with Hugo static site generator. Then it's launched in a Docker container.
## Installation
For creating site it's necessary to download hugo-eureka theme as git-submodule, so get the image and launch a container use the command: 
```bash
git clone --recurse-submodule https://github.com/AleksandraKlua/nx_bootcamp_webapp
```
## Usage
To build an image launch 
```bash
sh nx_bootcamp_webapp/scripts/build.sh
```

To run a container launch 
```bash
sh nx_bootcamp_webapp/scripts/run.sh
```


To see the site open your browser and enter the ```localhost:80```.

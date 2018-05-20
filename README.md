$ This project can be used to get useful commands for bringing up docker containers on the windows 10 pro enviroments.
Note : Windows 10 docker would be by default in the windows container mode which to my understanding would not be very useful for Java developers. Better have linux container up and running. Also note that I faced lot of issues having participated in the Windows Insider Program. So incase you have your docker daemon running successfully, better leave it at that.

To switch to Linux container from PS :  & 'C:\Program Files\Docker\Docker\DockerCli.exe' -SwitchDaemon

To switch back to Windows container from PS :  & 'C:\Program Files\Docker\Docker\DockerCli.exe' -SwitchDaemon

#######################
DOCKER NOTES FROM LOCAL
#######################

Docker datastax Notes: https://docs.datastax.com/en/docker/doc/docker

    ○ docker run -e DS_LICENSE=accept -p 8888:8888 --name my-opscenter -d datastax/dse-opscenter
    ○ docker run -e DS_LICENSE=accept --link my-opscenter:opscenter --name my-dse -d datastax/dse-server
    	○ Note: the dse-server can be enabled with -g or -k or -s to enable graph-mode or analytics-spark mode or search mode.
    ○ docker exec -it my-dse nodetool status 
    
    For opening the DSE Studio :
    ○ docker run -e DS_LICENSE=accept -p 9090:9091 -d datastax/dse-studio --link my-dse --name my-studio

Docker Basic Commands for Ubuntu setup:

	Ø docker run --interactive --tty ubuntu bash

Docker Tools
	Ø Docker Client : Start and Stop container.
	Ø Docker Machine : Environment variables are set here.
	Ø Docker Compose : To run multiple containers. Database, App-Servers etc.
	Ø Docker Kinematic: to locate docker images on the web.
	Ø Virtual box : to run the images.

Docker Switch Daemon to Linux : 
& 'C:\Program Files\Docker\Docker\DockerCli.exe' -SwitchDaemon

From <https://stefanscherer.github.io/run-linux-and-windows-containers-on-windows-10/> 

Docker Youtube tutorial notes : 
C:\Users\kajay\docker-files\youtube-docker-1BI2W-PGkKw
#######################



	

# docker-openwrt-wso2am
Dockerizing the WSO2 API manager: 

* To avoid downloading the source each time a build is done, download the source dist folder:

1. Manually: Put the the file e.g. wso2am-1.9.1.zip under:

  ` <Your-docker-openwrt-wso2am-Path>/dist  `
2. Automatically: Use download-wso2am.sh by running it

 ` cd <Your-docker-openwrt-wso2am-Path>/dist `
 
  ` sh download-wso2am.sh `

* Build:
   
   ` cd <Your-docker-openwrt-wso2am-Path> `
     
   ` docker build -t gelareh/docker-openwrt-wso2am .  `

* Run:
   
   Firstly provide docker a repository on your computer, then run the container:

     ` mkdir /my-repository `
   
     ` docker run -it -v /my-repository:/repository  gelareh/docker-openwrt-wso2am /bin/bash `

* Check the wso2-api-manager console on your own computer.

 ` docker run -it -p 9443:9443 -v /my-repository:/repository   gelareh/docker-openwrt-wso2am `
 
 Find the Mgt Console URL: https://172.17.0.27:9443/carbon/ (example) in the logs.

 Note: If port 9443 is used, give an arbitrary free port and adapt the above command.
  

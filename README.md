# docker-openwrt-wso2am
Dockering the WSO2 API manager. 

* To avoid downloading the zip source file every time a build has beed done you download it manually or atumatically        under dist folder:

** Manually: Put the the file e.g. wso2am-1.9.1.zip under:
   
    cd <Your-docker-openwrt-wso2am-Path>/dist
  
** Automatically: Use download-wso2am.sh by running it
   
    cd <Your-docker-openwrt-wso2am-Path>/dist
   
   sh download-wso2am.sh

* Build:

    cd <Your-docker-openwrt-wso2am-Path>
  
  docker build -t gelareh/docker-openwrt-wso2am . 
  
  Note: gelareh/docker-openwrt-wso2am is sn arbitrary name for your docker-container.

* Run:
 
 Provide docker a repository on your comupter:

    mkdir /my-repository
    
    docker run -it -v /my-repository:/repository  gelareh/docker-openwrt-wso2am /bin/bash

* Run and check the wso2-api-manager console on your own computer. For this you should expose 
 
    docker run -it -p 9443:9443 -v /my-repository:/repository   gelareh/docker-openwrt-wso2am

  Find the  Mgt Console URL: https://172.17.0.27:9443/carbon/ (example) in the logs and give it in your computer         browser.

  Note: If the computer port 9443 is used. Give an arbitary free port and adapt the given URL as so.
  

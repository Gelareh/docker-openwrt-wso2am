# docker-openwrt-wso2am
Dockerizing the WSO2 API manager: 

* To avoid downloading the source each time a build is done, download the source once under the dist folder:

1. Manually: Put the the file e.g. wso2am-1.9.1.zip under:

  ` <wso2am_HOME>/dist  `
2. Automatically: run the **download-wso2am.sh** script file:

 ` cd <wso2am_HOME>/dist `
 
  ` sh download-wso2am.sh `

* Build:
   
   ` cd <wso2am_HOME> `
     
   ` docker build -t gelareh/docker-openwrt-wso2am .  `

* Run:
   
   Firstly provide docker a repository on your computer, then run the container:

     ` mkdir /my-repository `
   
     ` docker run -it -v /my-repository:/repository  gelareh/docker-openwrt-wso2am /bin/bash `

* Check the wso2-api-manager console on your own computer.

 ` docker run -it -p 9443:9443 -v /my-repository:/repository   gelareh/docker-openwrt-wso2am `
 
 Find the Mgt Console URL: https://172.17.0.27:9443/carbon/ (example) in the logs.

 Note: If port 9443 is used, give an arbitrary free port and adapt the above command.
  

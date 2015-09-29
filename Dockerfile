FROM mcreations/openwrt-java:7
MAINTAINER Gelareh Abooghadareh <abooghadareh@m-creations.net>
ENV WSO2AM_VERSION 1.9.1
ENV WSO2AM_HOME /opt/wso2am-${WSO2AM_VERSION}
ENV WSO2AM_HOME_REPOSITORY /opt/wso2am-${WSO2AM_VERSION}/repository
ENV MOUNTED_REPOSITORY_DIR /repository
ENV DIST_DIR /mnt/packs
# normal, debug
ENV WSO2AM_RUN_MODE=normal
# ENV WSO2AM_DEBUG_PORT=5005
ADD image/root /
RUN mkdir -p /mnt/packs
ADD dist/ /mnt/packs
# Download WSO2AM and installing it
RUN mkdir -p ${WSO2AM_HOME} && mkdir -p ${MOUNTED_REPOSITORY_DIR} && \
opkg update && \
opkg install unzip && \
([ -f $DIST_DIR/wso2am-${WSO2AM_VERSION}.zip ] || wget -O $DIST_DIR/wso2am-${WSO2AM_VERSION}.zip --progress=dot:giga --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/api-manager/${WSO2AM_VERSION}/wso2am-${WSO2AM_VERSION}.zip) && \
unzip $DIST_DIR/wso2am-${WSO2AM_VERSION}.zip -d /tmp && \
rm $DIST_DIR/wso2am-${WSO2AM_VERSION}.zip && \
mv -f /tmp/wso2am-* /opt/ && \
echo "export PATH=$PATH:$JAVA_HOME/bin/bundled:${WSO2AM_HOME}/bin" >> /etc/profile && \
echo "export CARBON_HOME=${WSO2AM_HOME}" >> /etc/profile
# Expose ports
EXPOSE 9443 9763
CMD ["/start-wso2am"]

#!/bin/bash
# Download and place wso2am packs in this dist/ directory to avoid multiple times download.
WSO2AM_VERSION=1.9.1
#wget --progress=dot:giga --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products
#/api-manager/${WSO2AM_VERSION}/wso2am-${WSO2AM_VERSION}.zip
wget --progress=dot:giga --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/api-manager/${WSO2AM_VERSION}/wso2am-${WSO2AM_VERSION}.zip

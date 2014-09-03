# Cookbook Name:: lookout-zk
# Attributes:: default

default['apt']['compile_time_update'] = true

default['java']['jdk_version'] = '7'
default['java']['install_flavor'] = 'oracle'
default['java']['oracle']['accept_oracle_download_terms'] = true

default['zookeeper']['version'] = '3.4.6'
default['zookeeper']['service_style'] = 'upstart'



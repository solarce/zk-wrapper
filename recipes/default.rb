#
# Cookbook Name:: zk-wrapper
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# apt cookbook so we can get an apt update
node.set["apt"]["compiletime"] = true
node.set["apt"]["compile_time_update"] = true
node.set["apt"]["periodic_update_min_delay"] = 0
include_recipe "apt::default"

execute 'apt-get update' do
  action :nothing
end.run_action(:run)

# let's install zookeeper
include_recipe 'zookeeper::install'

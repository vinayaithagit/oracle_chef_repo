#
# Cookbook Name:: patching
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Hello..Govinda.... I am in default recipe of cookbook named 'patching' - version 0.1.1")
Chef::Log.info("Hello..Govinda.... The content  in default recipe of cookbook named 'patching' - version 0.1.1 has been updated to see if it affects the latest version as well.")
Chef::Log.info("The user name is #{node['patching']['username']}" )


objeitem = data_bag_item('userdatabaag','databag1forvinaytrainingnode1')
Chef::Log.info("The user name is #{objeitem['usernames']['username1']}" )
Chef::Log.info("The paswd is #{objeitem['passwords']['paswd1']}" )

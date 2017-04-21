#
# Cookbook Name:: patching
# Recipe:: vinay1
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Hello..Govinda.... I am in vinay1.rb recipe of cookbook named 'patching' - version 0.1.1")
Chef::Log.info("The user name is #{node['patching']['username']}" )
=begin
objeitem = data_bag_item('userdatabaag','databag1forvinaytrainingnode1')
Chef::Log.info("The user name is #{objeitem['usernames']['username1']}" )
Chef::Log.info("The paswd is #{objeitem['passwords']['paswd1']}" )
=end
Chef::Log.info("Hello..Govinda..Testing the chef-solo....")

mylib
=begin
chef_data_bag_item 'databag1forvinaytrainingnode1' do
  attribute 'raw_json'
  {
    "usernames": {
      "username6": "Ananatha",
      "username7": "Maadhava"
                 }
  }
  action :create # see actions section below
end
=end

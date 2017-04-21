#
# Cookbook Name:: oracle_170417_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Hello recipe I am in oracle")
Chef::Log.debug("Hello recipe I am in oracle for debug")

#remote_file 'C:/chef/Git-2.12.2.2-64-bit.exe' do
#source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
#not_if{File.exists?('C:/chef/Git-2.12.2.2-64-bit.exe')} # Dont download if GIT is already there
#action :create
#nd

#execute 'install_git' do
#command 'C:/chef/Git-2.12.2.2-64-bit.exe /SILENT'
#not_if{File.exists?('C:\Program Files\Git')} # Dont install if GIT is already there
#end

remote_file "C:/chef/#{node['oracle_170417_cookbook']['git_installer']}" do
source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
not_if{File.exists?('C:/chef/Git-2.12.2.2-64-bit.exe')} # Dont download if GIT is already there
action :create
end

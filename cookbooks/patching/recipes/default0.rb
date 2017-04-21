#
# Cookbook Name:: oracle_170417_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Hello recipe I am in oracle")
#Chef::Log.debug("Hello recipe I am in oracle for debug")

=begin

remote_file 'C:/chef/Git-2.12.2.2-64-bit.exe' do
source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
not_if{File.exists?('C:/chef/Git-2.12.2.2-64-bit.exe')} # Dont download if GIT is already there
action :create
end

execute 'install_git' do
command 'C:/chef/Git-2.12.2.2-64-bit.exe /SILENT'
not_if{File.exists?('C:\Program Files\Git')} # Dont install if GIT is already there
end

remote_file "C:/chef/#{node['oracle_170417_cookbook']['git_installer']}" do
source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
not_if{File.exists?('C:/chef/Git-2.12.2.2-64-bit.exe')} # Dont download if GIT is already there
action :create
end

=end

Chef::Log.info("Hello I am in version 0.1.4")

=begin
Chef::Log.info("I am creating a directory and a file named index.html in the same.")
Chef::Log.info("The dir value is set to  #{node['oracle_170417_cookbook']['dir_nam']}")

Chef::Log.info("Client's fqdn is #{node["fqdn"]}" )
Chef::Log.info("Client's java version is #{node["languages"]["java"]["version"]}" )
Chef::Log.info("Client's current free memory is #{node["memory"]["free"]} kB " )
#Chef::Log.info("The dir value is set to  #{node['oracle_170417_cookbook']['dir_nam']}")
#Chef::Log.info("The dir value is set to  #{node['oracle_170417_cookbook']['dir_nam']}")


directory "#{node['oracle_170417_cookbook']['dir_nam']}" do
  #owner 'root'
  #group 'root'
  #mode '0755'
  recursive true
  action :create
end

cookbook_file "#{node['oracle_170417_cookbook']['dir_nam']/index.html}" do
  source 'index.html'
  #owner 'root'
  #group 'root'
  #mode '0755'
  action :create
end
=end



template 'C:\hudson.cmd' do
 source 'createhudsonscript.erb'
 #mode '0440'
 owner 'Administrator'
 group 'Administrator'

 variables({
   sudoers_groups: node['oracle_170417_cookbook']['sudo']['groups'],
   sudoers_users: node['oracle_170417_cookbook']['sudo']['users'],
   isadmin: true
 })
 action :create
end

# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "vinayaithachef"
client_key               "#{current_dir}/vinayaithachef.pem"
chef_server_url          "https://api.chef.io/organizations/vac9"
cookbook_path            ["#{current_dir}/../cookbooks"]
http_proxy               "http://www-proxy.us.oracle.com:80"
https_proxy              "http://www-proxy.us.oracle.com:80"

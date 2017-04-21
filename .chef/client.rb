# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options
log_level                :info
log_location             STDOUT
chef_server_url          "https://api.chef.io/organizations/vac9"
validation_client_name   'vac9-validator'
validation_key           'c:/chef/validator.pem'
client_key               "c:/chef/client.pem"
http_proxy               "http://www-proxy.us.oracle.com:80"
https_proxy              "http://www-proxy.us.oracle.com:80"
node_name				 "vinaytrainingnode1"
default['oracle_170417_cookbook']['git_installer'] = 'Git-2.5.3-64-bit.exe'
#default['oracle_170417_cookbook']['recur']= 'true'
if node["platform"] == 'windows'
default['oracle_170417_cookbook']['dir_nam'] = 'C:\tmp3\tmp2\tmp1'
else
default['oracle_170417_cookbook']['dir_nam'] = '/tmp3/tmp2/tmp1'
end

default['oracle_170417_cookbook']['sudo']['groups'] = [ 'vaitha', 'rpchande', 'admin' ]
default['oracle_170417_cookbook']['sudo']['users']  = [ 'vaitha', 'rpchande']

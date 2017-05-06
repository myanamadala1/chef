package 'tree' do 
  action :install
end

package 'ntp' 
package 'emacs'
package 'git' do
  action :install
end

file '/etc/motd' do
  content 'This server is Mohans property'
  action :create
  group 'root'
  user 'root'
end

service 'ntpd' do
  action [ :enable, :start ]
end

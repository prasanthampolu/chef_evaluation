#
# Cookbook Name:: ec2-docke
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
remote_file '/opt/new+2.sh' do
  source 'https://s3.amazonaws.com/chefrepo21/new+2.sh'
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end
execute 'run script' do
  command 'sh /opt/new+2.sh'
end
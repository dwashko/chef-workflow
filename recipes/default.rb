#
# Cookbook Name:: workflow
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'workflow_apache_support::disk'
include_recipe 'apache2'
include_recipe 'workflow_apache_support'
include_recipe 'workflow_apache_support::homepage'
include_recipe 'selinux'

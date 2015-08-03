require_relative 'spec_helper'

describe package('httpd'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe service('httpd'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

describe file('/htdocs/index.html') do
  it { should exist }
  it { should be_file }
  it { should be_owned_by 'apache' }
  it { should be_grouped_into 'apache' }
end

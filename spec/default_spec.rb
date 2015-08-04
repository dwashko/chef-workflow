# encoding: utf-8

require 'chefspec'
require 'spec_helper'

describe 'workflow::default' do
  before do
    stub_command("/usr/sbin/httpd -t").and_return(true)
  end
  context 'centos' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
      end.converge(described_recipe)
    end

    it 'includes recipe workflow_apache_support::docroot' do
      expect(chef_run).to include_recipe('workflow_apache_support::docroot')
    end

    it 'includes recipe apache2' do
      expect(chef_run).to include_recipe('apache2')
    end

    it 'includes recipe workflow_apache_support::default' do
      expect(chef_run).to include_recipe('workflow_apache_support::default')
    end

    it 'includes recipe workflow_apache_support::homepage' do
      expect(chef_run).to include_recipe('workflow_apache_support::homepage')
    end
  end
end


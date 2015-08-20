VAGRANTFILE_API_VERSION = '2'
my_disk = './tmp/mydisk.vdi'
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider 'virtualbox' do |vb|
    vb.customize ['createhd', '--filename', my_disk, '--size', '1024']
    vb.customize ['storageattach', :id, '--storagectl', 'IDE Controller', '--medium', my_disk, '--port', '1', '--device', '0', '--type', 'hdd']
  end
end

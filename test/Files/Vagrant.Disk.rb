VAGRANTFILE_API_VERSION = '2'
my_iso = '/Users/dwashko/isos/ovftransport.iso'
my_disk = './tmp/disk.vdi'
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider 'virtualbox' do |vb|
    vb.customize ['createhd', '--filename', my_disk, '--size', '1024']
    vb.customize ['storageattach', :id, '--storagectl', 'SCSI Controller', '--medium', my_disk, '--port', '1', '--device', '0', '--type', 'hdd']
    vb.customize ['storageattach', :id, '--storagectl', 'IDE Controller', '--port', 0, '--device', 1, '--type', 'dvddrive', '--medium', my_iso]
  end
end

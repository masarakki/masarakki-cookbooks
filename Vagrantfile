# frozen_string_literal: true

Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/jammy64'

  config.vm.define 'storage' do |config|
    config.vm.hostname = 'storage'

    config.vm.provider "virtualbox" do |v|
      (1..8).each do |i|
        disk_file = ".vagrant/disks/storage-disk-#{i}.vdi"
        v.customize ['createhd', '--filename', disk_file, '--size', 1024] unless File.exist?(disk_file)
        v.customize ['storageattach', :id, '--storagectl', 'SCSI', '--port', i + 4, '--device', 0, '--type', 'hdd', '--medium', disk_file]
      end
    end

    config.vm.provision :ansible do |ansible|
      ansible.playbook = 'storage.yml'
    end
  end

  config.vm.define 'laptop' do |config|
    config.vm.hostname = 'laptop'
    config.vm.provision :ansible do |ansible|
      ansible.playbook = 'laptop.yml'
    end
  end

  config.vm.define 'desktop' do |config|
    config.vm.hostname = 'desktop'
    config.vm.provision :ansible do |ansible|
      ansible.playbook = 'desktop.yml'
    end
  end
end

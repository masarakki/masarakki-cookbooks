# frozen_string_literal: true

Vagrant.configure('2') do |config|
  config.vm.define 'storage' do |config|
    config.vm.box = 'ubuntu/focal64'

    8.times do |num|
      config.vm.disk :disk, size: '512MB', name: "disk-#{num}"
    end

    config.vm.provision :shell, path: 'misc/install_ansible.sh'
    config.vm.provision :ansible do |ansible|
      ansible.playbook = 'storage.yml'
    end
  end

  config.vm.define 'laptop' do |config|
    config.vm.box = 'ubuntu/focal64'
    config.vm.provision :shell, path: 'misc/install_ansible.sh'
    config.vm.provision :ansible do |ansible|
      ansible.playbook = 'laptop.yml'
    end
  end
end

# frozen_string_literal: true

Vagrant.configure('2') do |config|
  config.vm.define 'storage' do |config|
    config.vm.box = 'ubuntu/jammy64'
    config.vm.provision :ansible do |ansible|
      ansible.playbook = 'storage.yml'
    end
  end

  config.vm.define 'laptop' do |config|
    config.vm.box = 'ubuntu/jammy64'
    config.vm.provision :ansible_local do |ansible|
      ansible.install = true
      ansible.limit = 'all,localhost'
      ansible.playbook = 'laptop.yml'
    end
  end

  config.vm.define 'desktop' do |config|
    config.vm.box = 'ubuntu/jammy64'
    config.vm.provision :ansible_local do |ansible|
      ansible.install = true
      ansible.limit = 'all,localhost'
      ansible.playbook = 'desktop.yml'
    end
  end
end

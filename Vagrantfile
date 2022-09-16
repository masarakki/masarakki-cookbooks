Vagrant.configure("2") do |config|
  config.vm.define 'storage' do |storage|
    storage.vm.box = 'ubuntu/jammy64'
    storage.vm.provision :shell, path: 'misc/install_ansible.sh'
    storage.vm.provision :ansible do |ansible|
      ansible.playbook = "storage.yml"
    end
  end
end

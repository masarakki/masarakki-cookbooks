Vagrant.configure("2") do |config|
  config.vm.define 'storage' do |storage|
    storage.vm.box = 'ubuntu/focal64'
    storage.vm.provision :shell, inline: <<-SHELL
      apt update
      apt install ansible -y
    SHELL
    storage.vm.provision :ansible do |ansible|
      ansible.playbook = "storage.yml"
    end
  end
end

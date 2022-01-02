Vagrant.configure("2") do |config|
  config.vm.box = "ahplummer/PopOS_21.10"
  config.vm.box_version = "0.6.0"
  config.vm.guest = "ubuntu"
  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false  
  end
  config.vm.provision :ansible do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
    ansible.host_vars = {
      "default" => {"ansible_python_interpreter" => "/usr/bin/python3"}
    }
  end
end
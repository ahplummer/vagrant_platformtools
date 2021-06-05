Vagrant.configure("2") do |config|
    config.vm.box = "ahplummer/PopOS_20.10"
    config.vm.box_version = "1"
    config.vm.guest = "ubuntu"
    config.vm.provision :ansible do |ansible|
        ansible.playbook = "provisioning/playbook.yml"
        ansible.host_vars = {
          "default" => {"ansible_python_interpreter" => "/usr/bin/python3"}
        }
  end
end
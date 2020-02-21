Vagrant.configure("2") do |config|
    

    (1..2).each do |i|
      
    config.vm.define vm_name="web#{i}" do |node|
      node.vm.network "forwarded_port", guest: 1234, host: "6500#{i}"
      node.vm.box = "yordan/box"
      node.vm.hostname = vm_name
      node.vm.provision "shell", path: "scripts/provision.sh"
    end
  end
end
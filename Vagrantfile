# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "drudev"

  # config.vm.box_url = "http://domain.com/path/to/above.box"

  # config.vm.network :forwarded_port, guest: 80, host: 8080

  config.vm.network :private_network, ip: "192.168.33.10"

  # config.vm.network :public_network

  config.vm.synced_folder "share", "/home/share"

   config.vm.provider :virtualbox do |vb|
     vb.customize ["modifyvm", :id, "--memory", "1024"]
   end

end

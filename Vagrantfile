VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "bento/centos-6.7"

  config.vm.define :ns do | ns |
    ns.vm.hostname = "nfs-svr"
    ns.vm.network :private_network, ip: "192.168.33.101"#, virtualbox__intnet: "intnet"
    ns.vm.provision :shell, :path => "./nfsserver.sh",:privileged   => true
  end
  
  config.vm.define :nc do | nc |
    nc.vm.hostname = "nfs-cli"
    nc.vm.network :private_network, ip: "192.168.33.100"#, virtualbox__intnet: "intnet"
    nc.vm.provision :shell, :path => "./nfsclient.sh",:privileged   => true
  end

end

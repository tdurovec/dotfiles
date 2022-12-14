Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-20.04"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 4
    v.customize [ "modifyvm", :id, "--uartmode1", "disconnected" ]
  end
  config.vm.network "public_network"
  config.ssh.forward_agent = true
  config.vm.provision :shell, :inline => "sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config; sudo systemctl restart sshd;", run: "always"
  config.vm.provision :shell, :path => "bootstrap.sh"
end
config.vm.network "public_network", bridge: 'wlp0s20f3', ip: "192.168.1.201"

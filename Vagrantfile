# -*- mode: ruby -*-
# vi: set ft=ruby :

machine_name = "DevEnv - Eiger"

Vagrant.configure("2") do |config|

  # The name specified here is used for logging
  config.vm.define machine_name

  # Name of box to install with
  config.vm.box = "gusztavvargadr/windows-server"
  
  # Communicator type
  config.vm.communicator = "winrm"  

  # Guest OS
  config.vm.guest = :windows
  config.windows.halt_timeout = 15

  # Config networks on guest.
  config.vm.network :forwarded_port, guest: 3389, host: 3389, id: "rdp", auto_correct: true
  config.vm.network :forwarded_port, guest: 22, host: 2222, id: "ssh", auto_correct: true

  # Admin user name and password
  config.winrm.username = "vagrant"
  config.winrm.password = "vagrant"

  # VirutalBox configuration
  config.vm.provider :virtualbox do |vb, override|
    # The name specified here is used for the name of the generated VM
    vb.name = machine_name
    vb.gui = true
    vb.cpus = 2
    vb.memory = 4096
    vb.customize ["modifyvm", :id, "--vram", "128"]
    vb.customize ["setextradata", "global", "GUI/SuppressMessages", "all" ]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
  end

  # Hyperv configuration
  config.vm.provider :hyperv do |h|
    h.vmname = machine_name
    h.cpus = 2
    h.memory = 4096
  end

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Move scripts to documents folder and install when ready
  config.vm.provision "file", source: "scripts", destination: "scripts"

  # Install on Up
  config.vm.provision "shell" do |s|
    s.path = "scripts/install-choco.ps1"
  end

  config.vm.provision "shell" do |s|
    s.path = "scripts/install-choco-packages.ps1"
  end

  config.vm.provision "shell" do |s|
    s.path = "scripts/install-vscode-extensions.ps1"
  end

  config.vm.provision "shell" do |s|
    s.path = "scripts/install-npm-version.ps1"
  end

  config.vm.provision "shell" do |s|
    s.path = "scripts/install-npm-packages.ps1"
  end  

end

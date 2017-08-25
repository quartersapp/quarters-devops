VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "api"
  config.vm.network :private_network, ip: "10.0.0.10"
  config.vm.synced_folder "../quarters-api", "/home/vagrant/quarters-api"
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 1
  end

  config.berkshelf.enabled = true
  config.berkshelf.berksfile_path = './Berksfile'

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      user: 'vagrant',
      postgres_config: {
        databases: ['quarters_development', 'ps_test'],
        connection: {
          host: '127.0.0.1',
          port: 5432,
          username: 'vagrant',
          password: 'vagrant'
        }
      },
      env_vars: {}
    }

    chef.run_list = [
      "api_config::setup-common",
      "api_config::setup-nodejs",
      "api_config::setup-postgresql-server",
      "api_config::setup-postgresql-client",
      "api_config::setup-environment",
      "api_config::create-databases"
    ]

  end
end

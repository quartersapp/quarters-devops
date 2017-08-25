include_recipe 'nodejs::npm'

packages = ['npx']

packages.each do |package|
  nodejs_npm package
  link "/usr/local/bin/#{package}" do
    to "/usr/local/nodejs-#{node['nodejs']['install_method']}-#{node['nodejs']['version']}/bin/#{package}"
  end
end

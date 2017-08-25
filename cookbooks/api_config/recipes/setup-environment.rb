template "/home/#{node['user']}/.bash_profile" do
  source 'bash_profile.erb'
  variables(
    env: node['env_vars'])
  action :create
end

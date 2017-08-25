include_recipe 'database::postgresql'

node['postgres_config']['databases'].each do |database_name|
  postgresql_database database_name do
    connection node['postgres_config']['connection']
    action :create
  end
end

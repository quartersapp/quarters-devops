node.default['common']['env'] = 'development'

node.default['common']['deploy_user'] = 'deploy'
node.default['common']['deploy_user_password'] = 'deploy'
node.default['common']['deploy_group'] = 'deploy'
node.default['common']['deploy_user_home'] = '/home/deploy'


node.default['nodejs']['version'] = '8.3.0'
node.default['nodejs']['source']['checksum'] = 'e68cc956f0ca5c54e7f3016d639baf987f6f9de688bb7b31339ab7561af88f41'
node.default['nodejs']['binary']['checksum'] = 'e68cc956f0ca5c54e7f3016d639baf987f6f9de688bb7b31339ab7561af88f41'


node.default['postgresql']['version'] = '9.6'
node.default['postgresql']['dir'] = '/etc/postgresql/9.6/main'
node.default['postgresql']['config']['dynamic_shared_memory_type'] = 'sysv'
node.default['postgresql']['password']['postgres'] = 'deploy'
node.default['postgresql']['client']['packages'] = ['postgresql-client-9.6', 'libpq-dev']
node.default['postgresql']['server']['packages'] = ['postgresql-9.6']
node.default['postgresql']['contrib']['packages'] = ['postgresql-contrib-9.6']
node.default['postgresql']['pg_hba'] = [
  { type: 'local', db: 'all', user: 'all', addr: nil, method: 'trust' },
  { type: 'host', db: 'all', user: 'all', addr: '127.0.0.1/32', method: 'trust' },
  { type: 'host', db: 'all', user: 'all', addr: '::1/128', method: 'trust' },
  { type: 'host', db: 'all', user: 'vagrant', addr: 'all', method: 'password' },
  { type: 'host', db: 'all', user: 'postgres', addr: 'all', method: 'trust' }
]

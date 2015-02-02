role :app, %w{deployer@ubuntu14.vm}
role :web, %w{deployer@ubuntu14.vm}
role :db,  %w{deployer@ubuntu14.vm}

set :nginx_server_name, 'ubuntu14.vm'
set :unicorn_workers, 4

server 'ubuntu14.vm', user: 'deployer', roles: %w{web app}
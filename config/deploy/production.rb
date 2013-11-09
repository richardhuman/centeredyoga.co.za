set :stage, :production
set :deploy_to, "/var/www/rails_caps/#{fetch(:application)}/production/"
set :rails_env, :production
server 'do1.human.co.za', roles: %w{web app}
set :stage, :production
set :deploy_to, "/var/www/rails_caps/#{fetch(:application)}/production/"

server 'do1.human.co.za', roles: %w{web app}
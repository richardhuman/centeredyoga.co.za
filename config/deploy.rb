set :format, :pretty
set :log_level, :debug


set :stages, %w[production]
set :application, 'centeredyoga.co.za'
set :repo_url,  'git@github.com:richardhuman/centeredyoga.co.za.git' 

#ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }
set :branch, 'master'

set :rbenv_type, :system
set :rbenv_ruby, File.read('.ruby-version').strip

set :ssh_options, {
  user: 'deployer',
  forward_agent: true,
}


namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  after :finishing, 'deploy:cleanup'

end
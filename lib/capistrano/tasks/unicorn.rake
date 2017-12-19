namespace :unicorn do
  desc 'Start unicorn server'
  task :start do
    on roles(:app) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'unicorn:start'
        end
      end
    end
  end

  desc 'Stop unicorn server gracefully'
  task :stop do
    on roles(:app) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'unicorn:stop'
        end
      end
    end
  end

  desc 'Restart unicorn server gracefully'
  task :restart do
    on roles(:app) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'unicorn:restart'
        end
      end
    end
  end

  desc 'Reload (Send USR2 Signal) unicorn process; if process not exists, up'
  task :reload do
    on roles(:app) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          if test("[ -f #{shared_path}/tmp/pids/unicorn.pid ]")
            execute :rake, 'unicorn:reload'
          else
            execute :rake, 'unicorn:start'
          end
        end
      end
    end
  end

  desc 'Stop unicorn server immediately'
  task :force_stop do
    on roles(:app) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'unicorn:force_stop'
        end
      end
    end
  end
end


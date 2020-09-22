# frozen_string_literal: true

server 'turvitan.km.ua', user: 'deployer', roles: %w[web app db], port: 22
set :branch, 'master'
set :rails_env, :production
set :stage, :production
set :sidekiq_env, :production
set :deploy_to, '/home/deployer/apps/turvitan.km.ua'

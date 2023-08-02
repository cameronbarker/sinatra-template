require 'sinatra/activerecord/rake'
require 'standard/rake'

namespace :db do
  task :load_config do
    require './app'
  end
end

task :server do
  sh('puma -p 3000')
end
task :console do
  sh('bundle exec pry -r ./app.rb')
end

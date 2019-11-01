require 'bundler'
Bundler.require

system('bundle install')
system('rails db:drop')
system('rails db:create')
system('rails db:migrate')
system('rails db:seed')
system('rails db:seed')
Launchy.open("http://localhost:3000/sign_up")
system('rails server')

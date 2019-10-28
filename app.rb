require 'bundler'
Bundler.require

system('bundle install')
Launchy.open("http://localhost:3000/sign_up")
system('rails server')

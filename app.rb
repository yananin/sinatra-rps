require 'sinatra'
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get('/') do
  erb(:rules)
end

get('/rock') do
  @option=["rock", "paper", "scissors"].sample
  erb(:rock )
end

get('/paper') do
  @option=["rock", "paper", "scissors"].sample
  erb(:paper)
end

get('/scissors') do
  @option=["rock", "paper", "scissors"].sample
  erb(:scissors)
end

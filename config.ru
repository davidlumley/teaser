require 'rubygems'
require 'sinatra'
require 'app/app.rb'

use Rack::MethodOverride

run Teaser::App.new

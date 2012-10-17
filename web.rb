require 'rubygems'
require 'sinatra'
require 'leandocument'

set :public_folder, File.dirname(__FILE__) + '/public'
set :views,         File.dirname(__FILE__) + '/views'
$stdout.sync = true

get '/' do
  @doc = Leandocument::Document.new(:base_path => ".")
  erb :index
end

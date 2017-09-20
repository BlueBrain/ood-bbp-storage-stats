require 'erubi'
require './command'

set :erb, :escape_html => true

if development?
  require 'sinatra/reloader'
  also_reload './command.rb'
end

helpers do
  def title
    "Currently Running OnDemand Passenger Apps"
  end
end

# Define a route at the root '/' of the app.
get '/' do
  @command = Command.new
  @processes, @error = @command.exec

  # Render the view
  erb :index
end
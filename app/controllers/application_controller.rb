require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :index
    end

    post '/teams' do
        @team = Team.new(params)
        params['team']['heroes'].each do |hero|
            SuperHero.new(hero)
        end
        erb :team
    end

end

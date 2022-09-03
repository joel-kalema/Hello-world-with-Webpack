module V1
  class GreetingsController < ApplicationController
    def index
      greetings = Greeting.all
      render json: greetings[rand(greetings.length - 1)]
    end
  end
end

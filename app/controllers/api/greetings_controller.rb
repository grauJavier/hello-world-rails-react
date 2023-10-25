class Api::GreetingsController < ApplicationController
  def random
    random_greeting = Message.order(Arel.sql('RANDOM()')).first
    render json: { message: random_greeting.message }
  end
end

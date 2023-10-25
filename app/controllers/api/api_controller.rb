# app/controllers/api/api_controller.rb
class Api::ApiController < ApplicationController
  def random_greeting
    random_message = Message.order('RANDOM()').first
    render json: { greeting: random_message&.message || 'No greetings available' }
  end
end

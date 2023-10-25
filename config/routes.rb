# frozen_string_literal: true

Rails.application.routes.draw do
  root 'root#index'

  namespace :api, defaults: { format: :json } do
    get '/greetings/random', to: 'greetings#random'
  end
end

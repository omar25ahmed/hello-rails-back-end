class V1::GreetingsController < ApplicationController
  def index
    message = Greeting.find(rand(1..5)).greeting
    render json: { greetings: [
      {
        message: message
      }
    ] }.to_json
  end
end

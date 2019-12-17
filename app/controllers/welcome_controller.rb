class WelcomeController < ApplicationController
  def index
    cookies[:hello] = "Welcome to RoR"
  end
end

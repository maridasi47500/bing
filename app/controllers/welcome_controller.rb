class WelcomeController < ApplicationController
  def index
@news=News.all
  end
end

class HomeController < ApplicationController
  def index
  end
  def result
    @name = params[:name]
    @birthday = params[:birthday]
    @address = params[:address]
    @phone = params[:phone]
    @email = params[:email]
    @job = params[:job]
    @profile = params[:profile]
    @image_url = params[:image_url]

    render "home/result"
  end
end

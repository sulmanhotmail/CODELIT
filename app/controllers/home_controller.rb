class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to courses_path
    else
      render layout: "landing"
      @mainTitle = "Welcome in Inspinia Rails Seed Project"
      @mainDesc = "It is an application skeleton for a typical Ruby on Rails web app. You can use it to quickly bootstrap your webapp projects and dev/prod environment."
    end
  end

  def terms
  end

  def privacy
  end

  def pricing
  end

  def about
  end
end

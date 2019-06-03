class PagesController < ApplicationController
  def home
    render("pages/home.html.erb")
  end
end

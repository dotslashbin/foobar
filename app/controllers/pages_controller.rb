class PagesController < ApplicationController
  def home
  end

  def about
    @about_message = "lorem ipsum this is the about message"
  end
end

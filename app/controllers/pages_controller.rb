class PagesController < ApplicationController
  def home
    @cvs = Cv.all
  end

end

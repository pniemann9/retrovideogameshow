class PagesController < ApplicationController
  def index
    @videogame = Videogame.all
  end
end

class VideogamesController < ApplicationController
    before_action :set_videogame, only: [:show, :edit, :update, :destroy]

    def index
        if params[:query].present?
          @videogames = Videogame.search_by_name("#{params[:query]}")
        else
          @videogames = Videogame.all
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @videogame = Videogame.new
    end

    def create
        videogame = Videogame.create(videogame_params)
    end

    def edit
    end

    def update
        @videogame.update(videogame_params)
        redirect_to videogames_booking_path(@booking)
    end

    def destroy
        @videogame.destroy
        redirect_to videogames_path
    end

    private

    def videogame_params
        params.require(:videogame).permit(:name, :description, :price)
    end

    def set_videogame
        @videogame = Videogame.find(params[:id])
    end
end

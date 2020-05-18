class VideogamesController < ApplicationController
    before_action :set_videogame, only: [:show, :edit, :update, :destroy]

    def index
        @videogames = Videogame.all
    end

    def show 
    end

    def new
        @videogame = Videogame.new
    end

    def create
        videogame = Videogame.create(videogame_params)
        redirect_to videogame_path(videogame)
    end

    def edit
    end

    def update
        @videogame.update(videogame_params)
        redirect_to videogames_path
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
        @Videogame = Videogame.find(params[:id])
    end
end

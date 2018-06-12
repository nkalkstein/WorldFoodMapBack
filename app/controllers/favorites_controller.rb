class FavoritesController < ApplicationController


		def index
        @favorites = Favorite.all
        render json: @favorites
    end


	  def create 
        @favorite = Favorite.new(favorite_params)
        if @favorite.valid?
          @favorite.save
        render json: @favorite
      else 
          render json: @favorite.errors.full_messages
      end
    end
  

    def show
      @favorite = Favorite.find(params[:id])
      render json: @favorite
    end


    private
    def favorite_params
      params.permit(:url, :user_id)
    end




end

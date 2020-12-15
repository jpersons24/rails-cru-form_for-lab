class ArtistsController < ApplicationController

   def index
      @artists = Artist.all
   end

   def show
      @artist = Artist.find(params[:id])
   end

   def new
      @artist = Artist.new
   end

   def create
      @artist = Artist.create(create_params)
      redirect_to artist_path(@artist)
   end

   def edit
      @artist = Artist.find(params[:id])
   end

   def update
      @artist = Artist.find(params[:id])
      @artist.update(update_params)
      redirect_to artist_path(@artist)
   end

   # def delete
   # end

   private

   def create_params
      params.require(:artist).permit(:name, :bio)
   end

   def update_params
      params.require(:artist).permit(:bio)
   end

end

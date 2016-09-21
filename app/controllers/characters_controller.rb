class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      render json: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    head :no_content
  end

  def update
    @character = Character.find(params[:id])
    if @character.update(character_params)
      render json: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  private

    def character_params
      params.require(:character).permit(:character_name, :level, :character_class)
    end
end

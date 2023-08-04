class CatsController < ApplicationController

  def index
    @cats = Cat.all

    render json: @cats
  end








  def cat_params

    params.require(:cat).permit(:birth_date, :name, :color, :sex, :description)

  end
end

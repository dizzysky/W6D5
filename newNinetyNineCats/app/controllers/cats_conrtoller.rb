class CatsController < ApplicationController

  def index
    @cats = Cats.all

    render :index
  end








  def cat_params

    params.require(:cats).permit(:birth_date, :name, :color, :sex, :description)

  end
end

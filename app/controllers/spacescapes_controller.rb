class SpacescapesController < ApplicationController

  def index
    @spacescapes = Spacescape.all
  end

  def new
    @spacescape = Spacescape.new
  end

  def create
    @spacescape = Spacescape.new(spacescape_params)
    if owner?
      if @spacescape.save
        flash[:notice] = "Your spacescape has been added to the collection!"
        redirect_to spacescapes_path
      else
        flash.now[:notice] = "Your spacescape could not be added!"
        redirect_to spacescapes_path
      end
    end
  end

  private

  def spacescape_params
    params.require(:spacescape).permit(:title, :description, :picture)
  end

end

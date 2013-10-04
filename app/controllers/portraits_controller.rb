class PortraitsController < ApplicationController
  def index
    @portraits = Portrait.all
  end

  def new
    @portrait = Portrait.new
  end

  def create
    @portrait = Portrait.new(portrait_params)

    if @portrait.save
      redirect_to portraits_path, notice: "The portrait #{@portrait.name} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @portrait = Portrait.find(params[:id])
    @portrait.destroy
    redirect_to portraits_path, notice:  "The portrait #{@portrait.name} has been deleted."
  end

private
  def portrait_params
    params.require(:portrait).permit(:name, :attachment)
  end
end

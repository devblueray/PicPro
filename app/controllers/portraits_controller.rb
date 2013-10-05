class PortraitsController < ApplicationController
  def index
	 @gallery = Gallery.where(name: params[:name])
	 @gallery.each do |g|
    @portraits = Portrait.where(gallery_id: g.id)
	 end
  end

  def new
    @portrait = Portrait.new
	 @gallery = Gallery.where(name: params[:name])
  end

  def create
    @portrait = Portrait.new(portrait_params)
    @gallery = Gallery.where(name: params[:gallery_id])

    if @portrait.save
      redirect_to :back, notice: "The portrait #{@portrait.name} has been uploaded."
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
    params.require(:portrait).permit(:gallery_id, :attachment)
  end
end

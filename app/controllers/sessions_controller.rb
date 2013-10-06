class SessionsController < ApplicationController
  def new
			redirect_to gallery_path(current_user.name), notice: "logged in!" if current_user
  end

  def create
			 user = Customer.where(name: params[:name])
			 user.each do |u|
			 	if u && u.authenticate(params[:password])
						session[:user_id] = u.id
						redirect_to gallery_path, notice: "logged in!"
			 	else
						flash.now.alert = "Invalid Login!"
						render "new"
			 	end
			 end
  
  end

  def destroy
			 session[:user_id] = nil
			 redirect_to root_url, notice: "Logged out!"
  end
end

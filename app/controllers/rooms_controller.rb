class RoomsController < ApplicationController
  def index
    redirect_to signin_path unless current_user
    @rooms = Room.public_rooms
    @users = User.all_except current_user
  end

  def new
  end
end

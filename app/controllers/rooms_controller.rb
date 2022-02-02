class RoomsController < ApplicationController
  def index
    redirect_to signin_path unless current_user
    @rooms = Room.public_rooms
    @users = User.all_except current_user
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.create room_params
  end

  def show
    @room = Room.find params[:id]
    @rooms = Room.public_rooms
    @users = User.all_except current_user
    render :index
  end

  private

  def room_params
    params.require(:room).permit(:name)
  end
end

class AvatarsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @avatars = current_user.avatars
  end

  def show
  end

  def new
    @avatar = Avatar.new
  end

  def create
    @avatar = current_user.avatars.build(params[:avatar])

    if @avatar.save
      redirect_to user_avatars_path(current_user), :notice => "Avatar #{@avatar.photo_file_name} is added"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end

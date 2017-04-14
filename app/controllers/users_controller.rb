class UsersController < ApplicationController


  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(:name, :password, :nausea, :happiness, :tickets, :height)
  end

  def login
  end

end

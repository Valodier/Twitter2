class UsersController < ApplicationController

  def index 
    @users = User.all
    render :index
  end
  
  def show
    user_id = params[:id]
    @user = User.find_by(id: user_id)
    render :show
  end

  def create
    @user = User.create(
      name: params["name"] 
    )
    if @user.save
      render :show
    else
      render json: {errors: @user.error.full_messages},
      status: 422
    end
    
  end

  def update
    user_id = params[:id]
    @user = User.find_by(id: movie_id)

    @user.name = params[:name] 

    if user.save
      render :show
    else
      render json: {errors: @user.error.full_messages},
      status: 422
    end
    
  end

  def destroy
    user_id = params[:id]
    @user = User.find_by(id: user_id)
    @user.destroy
    render json: {message: "OH GOD NOT LIKE THIS"}
  end

end

class UsersController < ApplicationController
  def index
    render json: UserSerializer.new(User.all).serialized_json
  end

  def create
    user = User.new(user_params)
    user.location = Location.all.sample
    if user.save
      render json: UserSerializer.new(user).serialized_json, status: :ok
    else
      render json: user.errors
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :location_id)
  end
end

class UserController < ApplicationController
  def index
    @users = User.limit(params[:limit])
    render json: {users: @users} , :status => :ok
  end
  def create
    @user = User.create(
      username:params[:username],
      password:params[:password],
      age:params[:age],
      job:params[:job],
      password_confirmation:params[:password_confirmation]
      )
    if !@user.valid?
      render json: {errors: @user.errors.objects.first.full_message} ,:status => :unprocessable_entity
    else
      render json: {users: @user}, :status => :created
    end
  end
end

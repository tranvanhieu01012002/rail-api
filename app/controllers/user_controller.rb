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
      job:params[:job]
      )
    render json: {users: @user}, :status => :created
  end
end

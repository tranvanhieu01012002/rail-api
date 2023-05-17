class AuthController < ApplicationController
  def register
    @user = User.create(
      username:params[:username],
      password:params[:password],
      age:params[:age],
      job:params[:job],
      password_confirmation:params[:password_confirmation]
      )
    if @user.save
      render json: {users: @user}, :status => :created
    else
      render json: {erros: @user.errors.objects.first.full_message}, :status => :unprocessable_entity
    end
  end

  def login
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      render json: {users: @user}, :status => :ok
    else
      render json: {errors: "not found user"}, :status => :unprocessable_entity
    end
  end
end

# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.all  
  end

  def show
    @user = User.includes(:articles).find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:fullname, :mobile_no, :avatar)
  end
end

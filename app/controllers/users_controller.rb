class UsersController < ApplicationController
    before_filter :authenticate_user!, :except => [:show,:index]
before_filter: set_user_time_zone

def set_user_time_zone
Time.zone = current_user.time_zone if user_signed_in?
end

def index
  @users = User.all
end

    def show
       @users = User.all
    # user = User.create(params[:user])
    # redirect_to(user)
    # @user = User.find(params[:id])
  end

    def new
      @user = User.new
      @users = User.all
    end

     #  def create

     #     user = User.create(params[:user])
     #     redirect_to(user)
     # end

    def edit
         @user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        user.update_attributes(params[:user])
        redirect_to(user)
    end

  end
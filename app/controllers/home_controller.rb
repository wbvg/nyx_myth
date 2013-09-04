class HomeController < ApplicationController
  def index
    @users =User.all
    @chapters = Chapter.all

end

def create
   @user = User.new
  end

def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

    def show
      @users = User.all
    # @user = User.find(params[:id])
  end

    def new
      @user = User.new
      @users = User.all
    end

    # def create
    #      user = User.create(params[:user])
    #      redirect_to(user)
    #  end

    def edit
       # @status = current_user.status.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        user.update_attributes(params[:user])
        redirect_to(user)
    end


end
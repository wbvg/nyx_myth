class ApplicationController < ActionController::Base
  protect_from_forgery
#   before_filter :authenticate

# private
#   def authenticate
#     return unless session[:user_id]
#     @auth = User.find(session[:user_id])
#     unless @auth
#     session[:user_id] = nil
#     redirect_to(root_path)
#     end
#   end

  def is_admin
    current_user.is_admin? == true
    redirect_to(root_path) if current_user.nil? || current_user.is_admin?
  end


  def admin
    @admin = current_user.is_admin?
  end

  def user_avatar
    user.avatar if user
  end


  # def is_admin?
  #   # user.is_admin? = true
  # end

end

class ForumsController < ApplicationController
  def index
    @users = User.all
    @chapters = Chapter.all

    # days = (Time.new - current_user.created_at).to_i / (1 * 1 * 24)
    # @sections = @chapter.sections.limit(days)

  end

  def show
    @chapters = Chapter.all
    @users = User.all
    @chapter = Chapter.find(params[:id])

    # Section Limiter - This only allows users to read sections released to them each day
    days = (Time.new - current_user.created_at).to_i / (1 * 1 * 24)
    @sections = @chapter.sections.limit(days)
  end

end
class SectionsController < ApplicationController
  def index
    # Get number of days user has been a member
    # days = 1 + (Time.new - current_user.created_at).to_i / (60 * 60 * 24)
    days = (Time.new - current_user.created_at).to_i / (1* 1 * 24)
    chapter_id = params[:chapter_id]
    @sections = Section.select('section_title, id').where('chapter_id = ?', chapter_id).order(:id).limit(days)

    render :json => @sections
  end

  def show
    @section = Section.find(params[:id])
    @sections = Section.all
    @chapters = Chapter.all
  end

  def update
    render :json => @sections
  end

end
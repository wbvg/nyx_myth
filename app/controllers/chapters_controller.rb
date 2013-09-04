class ChaptersController < ApplicationController
def index
    @users = User.all
    @chapters = Chapter.all
  end

  def show
    @chapters = Chapter.all
    @users = User.all
    @chapter = Chapter.find(params[:id])
     days = (Time.new - current_user.created_at).to_i / (60 * 60 * 24)
     # days = (Time.new - current_user.created_at).to_i / (60 * 60 * 24)
    #@sections = Section.where('timer > ? AND timer < ?' , 1.day.ago.change(:hour => 24), Time.now.change(:hour => 24))
    @sections = @chapter.sections.limit(days + 1)


  end

  def new
    @chapter = Chapter.new(params[:chapter])

    1.times do
      section = @chapter.sections.build
    end
  end

  def create
    @chapter = Chapter.new(params[:chapter])
    @chapter.user_id = current_user.id
    @chapter.save
    redirect_to chapters_path
  end


  def edit
    @chapter = Chapter.find(params[:id])
  end

  def update
    chapter = Chapter.find(params[:id])
    chapter.update_attributes(params[:chapter])
    redirect_to(chapter_path)


    render :json => @sections


  end

  def destroy
    chapter = Chapter.find(params[:id])
    chapter.destroy
    redirect_to(user_path(current_user))
  end
end
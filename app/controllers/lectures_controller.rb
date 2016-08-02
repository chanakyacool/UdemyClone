class LecturesController < ApplicationController


  def new
    @course = Course.find(params[:course_id])
    @section = Section.find(params[:section_id])
    @lecture = @section.lectures.build
  end

  def create
    @course = Course.find(params[:course_id])
    @section = Section.find(params[:section_id])
    @lecture = @section.lectures.create(lecture_params)
    if @lecture.save
      redirect_to course_path(@course), notice: "Your lecture creation was successful."
    else
      render 'new'
    end
  end

  private
  def lecture_params
    params.require(:lecture).permit(:title, :youtube_url)
  end

end

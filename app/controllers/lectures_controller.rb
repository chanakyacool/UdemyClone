class LecturesController < ApplicationController


  def new
    @course = Course.find(params[:course_id])
    @section = Section.find(params[:section_id])
    @lecture = @section.lectures.new
  end

  def edit
    @course = Course.find(params[:course_id])
    @section = Section.find(params[:section_id])
    @lecture = @section.lectures.find(params[:id])
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

  def update
    @course = Course.find(params[:course_id])
    @section = Section.find(params[:section_id])
    @lecture = @section.lectures.find(params[:id])

    if @lecture.update(lecture_params)
      redirect_to @course
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:course_id])
    @section = Section.find(params[:section_id])
    @lecture = @section.lectures.find(params[:id])
    #if current_user == @section.user
      @lecture.destroy
      redirect_to @course
    #end
  end

  private
  def lecture_params
    params.require(:lecture).permit(:title, :youtube_url)
  end

end

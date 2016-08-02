class SectionsController < ApplicationController


  def show
    @course = Course.find(params[:course_id])
    @section = @course.find(params[:id])
    @lecture = @section.new
  end

  def new
    @course = Course.find(params[:course_id])
    @section = @course.sections.new
  end


  def edit
    @course = Course.find(params[:course_id])
    @section = @course.sections.find(params[:id])

  end

  def create
    @course = Course.find(params[:course_id])
    @section = @course.sections.new section_params
    #@section.user = current_user
    @section.save
    redirect_to course_path(@course), notice: "Your section was successful."
  end

  def update
    @course = Course.find(params[:course_id])
    @section = @course.sections.find(params[:id])

    if @section.update(section_params)
      redirect_to course_path(@course)
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:course_id])
    @section = @course.sections.find(params[:id])
    #if current_user == @section.user
      @section.destroy
      redirect_to course_path(@course)
    #end
  end


  private
    def section_params
      params.require(:section).permit(:title)
    end
end



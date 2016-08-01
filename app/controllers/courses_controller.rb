class CoursesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def edit
    @course = Course.find(params[:id])
  end

  def create
    @user = current_user
    @course = @user.courses.create(course_params)

    if @course.save
      redirect_to @course
    else
      render 'new'
    end
  end

  def update
    @course = Course.find(params[:id])
    if current_user == @course.user
      @course.update(course_params)
      redirect_to @course
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:id])
    if current_user == @course.user
      @course.destroy
    end

    redirect_to courses_path
  end

  private

  def course_params
    params.require(:course).permit(:title, :description, :image)
  end

end

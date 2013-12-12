class CoursesController < ApplicationController
  def new
  	@course = Course.new
  end

  def create
  	@course = Course.new(params[:course])
    @course.name = params[:course][:name].upcase
  	if @course.save
  		redirect_to courses_path
  	else
  		render 'new'
  	end
  end

  def index
  	@courses=Course.all
    @courses_easy = Course.easy_course
    @courses_medium = Course.medium_course
    @courses_hard = Course.hard_course
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(params[:course])
      redirect_to course_path(@course.id)
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end

end

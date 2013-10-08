class TasklistsController < ApplicationController
  def index
  	@task_lists = Tasklist.all
  end

  def new
  	@task_list = Tasklist.new
  end

  def create
  	@task_list = Tasklist.new(params[:tasklist])
  	if @task_list.save
  		redirect_to tasklists_path
  	else
  		render 'new'
  	end
  end

  def edit
  	@task_list = Tasklist.find(params[:id])
  end

  def show
  	@task_list = Tasklist.find(params[:id])
  end

  def update
  	  @tasklist = Tasklist.find(params[:id])
  	  if @tasklist.update_attributes(params[:tasklist])
  	  	redirect_to tasklist_path(@tasklist.id)
  	  else
  	  	render 'edit'
  	  end
  end

  def destroy
  	@tasklist = Tasklist.find(params[:id])
  	@tasklist.destroy
  	redirect_to tasklists_path
  end
end

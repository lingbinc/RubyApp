class TasklistsController < ApplicationController
  def index
    if user_signed_in?
      @task_lists = Tasklist.where(user_id: current_user)
    else
      @task_lists = []
    end
  end

  def new
  	@task_list = Tasklist.new
  end

  def create
  	@task_list = Tasklist.new(params[:tasklist])
    if (@task_list.user_id != current_user.id)
      redirect_to root_path
    else
    	if @task_list.save
        if @task_list.priority==5
          Notifications.new_tasklist(@task_list).deliver
        end
    		redirect_to tasklists_path
    	else
    		render 'new'
    	end
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

class TasksController < ApplicationController
  before_action :set_task, only: [:display, :edit, :update, :destroy]

  def all
    @tasks = Task.all
  end

  def add
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end

  def edit
    #...
  end

  def update
    #...
    @task.update(task_params)

    redirect_to display_path(@task)
  end

  def destroy
    #...
    @task.destroy
    redirect_to tasks_path
  end

  def display
    #...
  end

  private
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end

class TasksController < ApplicationController
  def new
    @task = Task.new
  end
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
  end
  def create
    @task = Task.new(task_params)
    @task.save
  end

private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    current = params[:task]
    @task = Task.new({"title": "#{current[:title]}", "body": "#{current[:body]}"})
    if @task.save
      redirect_to tasks_path, notice: "Successfully added new task"
    end
  end
end

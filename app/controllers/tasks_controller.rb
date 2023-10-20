class TasksController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    current = params[:task]
    @task = Task.new({"title": "#{current[:title]}", "body": "#{current[:body]}"})

    if @task.save
      redirect_to tasks_path, notice: "Successfully added new task"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    edited = params[:task]
    if @task.update({"title": "#{edited[:title]}", "body": "#{edited[:body]}"})
      redirect_to tasks_path, notice: "Task was successfully updated"
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_tweet
    @task = Task.find(params[:id])
  end

end

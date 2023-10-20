class SubtasksController < ApplicationController
  before_action :set_task

  def create
    @subtask = @task.subtasks.create(subtask_params)
    redirect_to task_path(@task)
  end

  def destroy
    @subtask = @task.subtasks.find(params[:id])
    @subtask.destroy
    redirect_to task_path(@task)
  end

  private

  def subtask_params
    params.require(:subtask).permit(:body)
  end

  def set_task
    @task = Task.find(params[:task_id])
  end
end

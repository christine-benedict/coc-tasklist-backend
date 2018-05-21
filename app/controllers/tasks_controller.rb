class TasksController < ApplicationController
  def index
    tasks = Task.all
    render json: tasks
  end

  def create
    task = Task.create(task_params)
    if task.valid?
      render json: task
    else
      render json: task.errors, status: :unprocessable_entity
    end
  end

  def admin
    filteredTasks = Task.all(poc: 'Admin' )
    render json: filteredTasks
  end

  def ops
    tasks = Task.all(poc: 'Operations' )
    render json: tasks
  end

  def maint
    tasks = Task.all(poc: 'Maintenance' )
    render json: tasks
  end

  def task_params
    params.require(:task).permit(:name, :poc, :dminuscat, :duedate, :taskstatus, :notes)
  end
end

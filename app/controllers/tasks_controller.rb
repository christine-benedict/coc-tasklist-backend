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

  def done
    task = Task.find(params[:id])
    task.update(taskstatus: 'Complete')
    render json: task
  end

  def admin
    filteredTasks = Task.where(poc: 'Admin' )
    render json: filteredTasks
  end

  def ops
    tasks = Task.where(poc: 'Operations' )
    render json: tasks
  end

  def maint
    tasks = Task.where(poc: 'Maintenance' )
    render json: tasks
  end

  def destroy
    Task.destroy(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :poc, :dminuscat, :duedate, :taskstatus, :notes)
  end
end

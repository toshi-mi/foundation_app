class TasksController < ApplicationController
    def index
      @task1 = Task.find(1)
      @task2 = Task.find(2)
    end
    
    def new
      @task = Task.new
    end
    
    def show
      @task = Task.find(params[:id])
    end
end
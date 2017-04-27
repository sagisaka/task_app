class ProjectsController < ApplicationController


    def index
        @search = Project.search(params[:q])
        if @search.result == "null"
            @projects = Project.all
        else
            @projects = @search.result
        end
    end

    def show
    end
    
    def new
        @project = Project.new
    end

    def create
      @project = Project.new(project_params)
      if @project.save
        redirect_to projects_path
      else
        render 'new'
      end
    end

    def edit
    end

    def update
      if @project.update(project_params)
        redirect_to projects_path
      else
        render 'edit'
      end
    end

    def destroy
      @project.destroy
      redirect_to projects_path
    end
    private

    def set_project
      @project = Project.find(params[:id])
    end

    before_action :set_project, only: [:show, :edit, :update, :destroy]


    def project_params
      params[:project].permit(:title)
    end
end

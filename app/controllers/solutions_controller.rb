class SolutionsController < ApplicationController
  def create
    project = Project.find(params[:project_id])
    solution = project.solutions.create(solution_params)
    redirect_to project_solution_path(project, solution)
  end

  def show
    @project = Project.find(params[:project_id])
    @solution = Solution.find(params[:id])
  end

  private

  def solution_params
    params.require(:solution).permit(:repo)
  end
end

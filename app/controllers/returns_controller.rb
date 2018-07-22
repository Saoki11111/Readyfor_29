class ReturnsController < ApplicationController
  before_action :set_project, only: [:new, :choice, :information, :confirmation]

  # 支払い選択
  def choice
  end

  # 支払い情報入力
  def information
  end

  # 支払い情報確認
  def confirmation
  end

  def new
    @return = Return.new
  end

  def create
    Return.create(return_params)
    redirect_to project_path(id: params[:project_id])
  end

  private
  def return_params
    params.require(:return).permit(:title,
                                   :price,
                                   :stock,
                                   :content,
                                   :arrival_date,
                                   :returnimage
                                  ).merge(project_id: params[:project_id])
  end

  def set_project
    @project = Project.find(params[:project_id])
  end
end

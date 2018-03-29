class Api::GroupController < ApplicationController
  def index
    @groups = Group.all
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      render :show 
    else
      render json: @group.errors.full_messages, status: 422
    end
  end

  def show
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      render :show
    else
      render json: @group.errors.full_messages, status: 422
    end
  end

  def destroy
    @group = Group.find(params[:id])
    if @group.destroy
      render :index
    else
      render json: @group.errors.full_messages
    end
  end

  private
  
  def group_params
    params.require(:group).permit(:company_id)
  end
end

class Api::EmployeeController < ApplicationController
  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      render :show
    else
      render json: @employee.errors.full_messages, status: 422
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    if @employee.destroy
      render :index
    else
      render json: @employee.errors.full_messages, status: 404
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name)
  end
end

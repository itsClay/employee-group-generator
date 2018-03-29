class Api::CompanyController < ApplicationController
  # not creating setup for index and show just yet as seems outside the 
  # scope of the project. Planning on having just one company show
  # after login

  def create
    @company = Company.new(company_params)
    if @company.save
      render :show
    else
      render json: @company.errors.full_messages, status: 422
    end
  end

  def destroy
    @company = Company.find(params[:id])
    if @company.destroy
      render :index
    else
      render json: @company.errors.full_messages, status: 404
    end
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end
end

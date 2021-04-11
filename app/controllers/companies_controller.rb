class CompaniesController < ApplicationController
  before_action :set_company, only: %i[ show edit update destroy ]

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def show; end

  private

  def company_params
    params.require(:company).permit(:job_id, :name, :location, :contact)
  end

  def set_company
    @company = Company.find(params[:id])
  end

end

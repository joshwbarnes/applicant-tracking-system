class JobsController < ApplicationController
  before_action :set_job, only: %i[ show edit update destroy ]

  def create
    # @candidate = Candidate.find(params[:candidate_id])

    @results = PgSearch.multisearch(:query)
    @job = Job.new(job_params)
    # @job.candidate = @candidate
    # @job.user = current_user
    if @job.save
      flash[:success]= "success"
      redirect_to @job
    else
      render :new
    end
  end

  def index
    @jobs = Job.all
  end

  def new
    # @candidate = Candidate.find(params[:candidate_id])
    @job = Job.new
  end

  def show
    @candidate = @job.candidate
  end

  def update
    set_job
    @job.save!
    redirect_to job_path(@job)
  end

  def destroy
    set_job
    @job.destroy
    redirect_to root_path
  end

  private

  def job_params
    params.require(:job).permit(:candidate_id, :title, :work_type, :company, :workplace_address, :salary, :start_date)
  end

  def set_job
    @job = Job.find(params[:id])
  end
end

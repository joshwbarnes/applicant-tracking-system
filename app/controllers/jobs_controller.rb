class JobsController < ApplicationController
  def create
    @candidate = Candidate.find(params[:candidate_id])
    @job = Job.new(job_params)
    @job.candidate = @candidate
    @job.user = current_user
    if @job.save
      redirect_to candidate_job_path(@candidate, @job)
    else
      render new
    end
  end

  def index
    @jobs = Job.where(user_id: current_user.id)
  end

  def new
    @candidate = Candidate.find(params[:candidate_id])
    @job = Job.new
  end

  def show
    make_job
    @candidate = @job.candidate
  end

  def update
    make_job
    @job.save!
    redirect_to job_path(@job)
  end

  def destroy
    make_job
    @job.destroy
    redirect_to root_path
  end

  private

  def job_params
    params.require(:job).permit(:candidate_id, :title, :work_type, :company, :workplace_address, :salary, :start_date)
  end

  def make_job
    @job = Job.find(params[:id])
  end
end
end

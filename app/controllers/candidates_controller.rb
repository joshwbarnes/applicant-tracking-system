class CandidatesController < ApplicationController
  before_action :set_candidate, only: %i[ show edit update destroy ]

  def index
    @results = PgSearch.multisearch(:query)
    @candidates = Candidate.all
  end

  def new
    @candidate = Candidate.new
  end

  def show; end

  def create
    @candidate = Candidate.new(candidate_params)
    @candidate.user = current_user

    if @candidate.save
      redirect_to candidates_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @candidate.update(candidate_params)
    redirect_to candidates_path(@candidate)
  end

  def destroy
    @candidate.destroy
    redirect_to candidates_path
  end

  private

  def candidate_params
    params.require(:candidate).permit(:first_name, :last_name, :current_position, :current_employer, :location, :mobile_number, :email)
  end

  def set_candidate
    @candidate = Candidate.find(params[:id])
  end
end

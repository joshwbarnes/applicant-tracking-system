class CandidatesController < ApplicationController
  before_action :set_candidate, only: [:show, :edit, :update, :destroy]

  def index
    @candidates = Candidate.all
  end

  def new
    @candidate = Candidate.new
  end

  def show; end

  def create
    @candidate = Candidate.new(candidate_params)
    # @candidate.user = current_user
    if @candidate.save
      redirect_to candidates_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @candidate = Candidate.update(candidate_params)
    redirect_to candidates_path(@candidate)
  end

  def destroy
    @candidate = Candidate.destroy
    redirect_to root_path
  end

  private

  def candidate_params
    params.require(:candidate).permit(:first_name, :last_name, :current_position, :email)
  end

  def set_candidate
    @candidate = Candidate.find(params[:id])
  end
end

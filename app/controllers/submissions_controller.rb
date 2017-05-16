class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :edit, :update, :destroy]

  # GET /submissions
  def index
    redirect_to new_submission_path
  end

  # GET /submissions/1
  def show

    doc = Microformats2.parse(@submission.url)
    render json: JSON.pretty_generate(doc.to_h)
  end

  # GET /submissions/new
  def new
    @submission = Submission.new
  end

  # GET /submissions/1/edit
  def edit
    redirect_to new_submission_path
  end

  # POST /submissions
  def create
    @submission = Submission.new(submission_params)

    if @submission.save
      redirect_to @submission, notice: 'Submission was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /submissions/1
  def update
    redirect_to new_submission_path
  end

  # DELETE /submissions/1
  def destroy
    redirect_to new_submission_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_submission
    @submission = Submission.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def submission_params
    params.require(:submission).permit(:url, :html, :base_url, :save_html, :render_html_in_page)
  end
end

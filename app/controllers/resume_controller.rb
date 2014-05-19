class ResumeController < ApplicationController
  before_action :set_resume, only: [:show, :edit, :update, :destroy]

  # GET /resume
  # GET /resume.json
  def index
    @resume = Resume.all
  end

  # GET /resume/1
  # GET /resume/1.json
  def show
  end

  # GET /resume/new
  def new
    @resume = Resume.new
  end

  # GET /resume/1/edit
  def edit
  end

  # POST /resume
  # POST /resume.json
  def create
    @resume = Resume.new(resume_params)

    respond_to do |format|
      if @resume.save
        format.html { redirect_to @resume, notice: 'Resume was successfully created.' }
        format.json { render action: 'show', status: :created, location: @resume }
      else
        format.html { render action: 'new' }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resume/1
  # PATCH/PUT /resume/1.json
  def update
    respond_to do |format|
      if @resume.update(resume_params)
        format.html { redirect_to @resume, notice: 'Resume was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resume/1
  # DELETE /resume/1.json
  def destroy
    @resume.destroy
    respond_to do |format|
      format.html { redirect_to resume_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resume
      @resume = Resume.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resume_params
      params[:resume]
    end
end

class ProfessionalSkillsController < ApplicationController
  before_action :set_professional_skill, only: [:show, :edit, :update, :destroy]

  # GET /professional_skills
  # GET /professional_skills.json
  def index
    @professional_skills = ProfessionalSkill.all
  end

  # GET /professional_skills/1
  # GET /professional_skills/1.json
  def show
  end

  # GET /professional_skills/new
  def new
    @professional_skill = ProfessionalSkill.new
  end

  # GET /professional_skills/1/edit
  def edit
  end

  # POST /professional_skills
  # POST /professional_skills.json
  def create
    @professional_skill = ProfessionalSkill.new(professional_skill_params)

    respond_to do |format|
      if @professional_skill.save
        format.html { redirect_to @professional_skill, notice: 'Professional skill was successfully created.' }
        format.json { render :show, status: :created, location: @professional_skill }
      else
        format.html { render :new }
        format.json { render json: @professional_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professional_skills/1
  # PATCH/PUT /professional_skills/1.json
  def update
    respond_to do |format|
      if @professional_skill.update(professional_skill_params)
        format.html { redirect_to @professional_skill, notice: 'Professional skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @professional_skill }
      else
        format.html { render :edit }
        format.json { render json: @professional_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professional_skills/1
  # DELETE /professional_skills/1.json
  def destroy
    @professional_skill.destroy
    respond_to do |format|
      format.html { redirect_to professional_skills_url, notice: 'Professional skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professional_skill
      @professional_skill = ProfessionalSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professional_skill_params
      params.require(:professional_skill).permit(:professional_skill_list_id, :skill_level_id, :profile_id)
    end
end

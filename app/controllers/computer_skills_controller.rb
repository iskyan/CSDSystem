class ComputerSkillsController < ApplicationController
  before_action :set_computer_skill, only: [:show, :edit, :update, :destroy]

  # GET /computer_skills
  # GET /computer_skills.json
  def index
    @computer_skills = current_profile.computer_skills.all
  end

  # GET /computer_skills/1
  # GET /computer_skills/1.json
  def show
  end

  # GET /computer_skills/new
  def new
    @computer_skill = current_profile.computer_skills.build
  end

  # GET /computer_skills/1/edit
  def edit
  end

  # POST /computer_skills
  # POST /computer_skills.json
  def create
    @computer_skill = current_profile.computer_skills.create(computer_skill_params)

    respond_to do |format|
      if @computer_skill.save
        format.html { redirect_to profile_computer_skills_path, notice: 'Computer skill was successfully created.' }
        format.json { render :show, status: :created, location: @computer_skill }
      else
        format.html { render :new }
        format.json { render json: profile_computer_skills.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /computer_skills/1
  # PATCH/PUT /computer_skills/1.json
  def update
    respond_to do |format|
      if @computer_skill.update(computer_skill_params)
        format.html { redirect_to profile_computer_skill_path notice: 'Computer skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @computer_skill }
      else
        format.html { render :edit }
        format.json { render json: profile_computer_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /computer_skills/1
  # DELETE /computer_skills/1.json
  def destroy
    @computer_skill.destroy
    respond_to do |format|
      format.html { redirect_to profile_computer_skills_path, notice: 'Computer skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computer_skill
      @computer_skill = current_profile.computer_skills.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def computer_skill_params
      params.require(:computer_skill).permit(:computer_skill_list_id, :skill_level_id, :profile_id)
    end
end

class ProfessionalSkillListsController < ApplicationController
  before_action :set_professional_skill_list, only: [:show, :edit, :update, :destroy]

  # GET /professional_skill_lists
  # GET /professional_skill_lists.json
  def index
    @professional_skill_lists = ProfessionalSkillList.all
  end

  # GET /professional_skill_lists/1
  # GET /professional_skill_lists/1.json
  def show
  end

  # GET /professional_skill_lists/new
  def new
    @professional_skill_list = ProfessionalSkillList.new
  end

  # GET /professional_skill_lists/1/edit
  def edit
  end

  # POST /professional_skill_lists
  # POST /professional_skill_lists.json
  def create
    @professional_skill_list = ProfessionalSkillList.new(professional_skill_list_params)

    respond_to do |format|
      if @professional_skill_list.save
        format.html { redirect_to @professional_skill_list, notice: 'Professional skill list was successfully created.' }
        format.json { render :show, status: :created, location: @professional_skill_list }
      else
        format.html { render :new }
        format.json { render json: @professional_skill_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professional_skill_lists/1
  # PATCH/PUT /professional_skill_lists/1.json
  def update
    respond_to do |format|
      if @professional_skill_list.update(professional_skill_list_params)
        format.html { redirect_to @professional_skill_list, notice: 'Professional skill list was successfully updated.' }
        format.json { render :show, status: :ok, location: @professional_skill_list }
      else
        format.html { render :edit }
        format.json { render json: @professional_skill_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professional_skill_lists/1
  # DELETE /professional_skill_lists/1.json
  def destroy
    @professional_skill_list.destroy
    respond_to do |format|
      format.html { redirect_to professional_skill_lists_url, notice: 'Professional skill list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professional_skill_list
      @professional_skill_list = ProfessionalSkillList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professional_skill_list_params
      params.require(:professional_skill_list).permit(:prof_skill)
    end
end

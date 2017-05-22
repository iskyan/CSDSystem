class ComputerSkillListsController < ApplicationController
  before_action :set_computer_skill_list, only: [:show, :edit, :update, :destroy]

  # GET /computer_skill_lists
  # GET /computer_skill_lists.json
  def index
    @computer_skill_lists = ComputerSkillList.all
  end

  # GET /computer_skill_lists/1
  # GET /computer_skill_lists/1.json
  def show
  end

  # GET /computer_skill_lists/new
  def new
    @computer_skill_list = ComputerSkillList.new
  end

  # GET /computer_skill_lists/1/edit
  def edit
  end

  # POST /computer_skill_lists
  # POST /computer_skill_lists.json
  def create
    @computer_skill_list = ComputerSkillList.new(computer_skill_list_params)

    respond_to do |format|
      if @computer_skill_list.save
        format.html { redirect_to @computer_skill_list, notice: 'Computer skill list was successfully created.' }
        format.json { render :show, status: :created, location: @computer_skill_list }
      else
        format.html { render :new }
        format.json { render json: @computer_skill_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /computer_skill_lists/1
  # PATCH/PUT /computer_skill_lists/1.json
  def update
    respond_to do |format|
      if @computer_skill_list.update(computer_skill_list_params)
        format.html { redirect_to @computer_skill_list, notice: 'Computer skill list was successfully updated.' }
        format.json { render :show, status: :ok, location: @computer_skill_list }
      else
        format.html { render :edit }
        format.json { render json: @computer_skill_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /computer_skill_lists/1
  # DELETE /computer_skill_lists/1.json
  def destroy
    @computer_skill_list.destroy
    respond_to do |format|
      format.html { redirect_to computer_skill_lists_url, notice: 'Computer skill list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computer_skill_list
      @computer_skill_list = ComputerSkillList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def computer_skill_list_params
      params.require(:computer_skill_list).permit(:comp_skill)
    end
end

class ProfileController < ApplicationController
  before_action :authenticate_profile!
  before_action :set_profile, only: [:show,:edit, :update, :destroy]
  before_action :get_group, only: [:students]

  def dashboard
    advisor= ProfileRole.find_by_role("advisor").id
    admin= ProfileRole.find_by_role("admin").id
    puts "cur"
    puts current_profile.profile_role_id
    puts admin
    if(current_profile.profile_role_id==advisor)
      @groups=[]
      @groups.push Group.find_by_profile_id(current_profile.id)
      puts @groups
      render 'profile/advisor/dashboard'
    elsif(current_profile.profile_role_id==admin)
      @groups=Group.all
      @advisors=[]
      @advisors.push Profile.find_by_profile_role_id(advisor)
      if @advisors==nil
        @advisors=[]
      end

      puts "ADMIN"
      puts @advisors.size
      render 'profile/admin/dashboard'
    else
      @work_experience = current_profile.work_experiences.build
    end

  end

  def students
    @students = @group.profiles
    render 'profile/advisor/students'
  end



  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show

    # respond_to do |format|
    #   format.html
    #   format.pdf do
    #     pdf = Prawn::Document.new
    #     pdf.html "profile/dashboard"
    #     send_data pdf.render,filename: "profile_#{@profile}.pdf",type: "application/pdf",
    #                                                                               disposition: "inline"
    #   end
    # end

    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: 'profile/cv',pdf: 'cv' }


    end

  end

  # GET /profiles/new

  # GET /profiles/1/edit
  def edit
    if current_profile!=@profile
      redirect_to root_url, notice: 'Permission denied'
    end
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    if current_profile!=@profile
      redirect_to root_url, notice: 'Permission denied'
    end

    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_group
      @group = Group.find(params[:id])
    end

    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit!
    end
end

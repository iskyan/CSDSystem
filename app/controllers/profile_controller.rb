class ProfileController < ApplicationController
  before_action :authenticate_profile!

  def dashboard

    @work_experience = current_profile.work_experiences.build


  end

  def edit

  end
end

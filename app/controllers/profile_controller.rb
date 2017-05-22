class ProfileController < ApplicationController
  before_action :authenticate_profile!

  def dashboard
    @me = current_profile
    puts "PROFILE"
    puts @me.username.to_s
    puts @me.profile_role.to_s

    # render :text => "asdf"
  end

  def edit

  end
end

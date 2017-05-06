class ProfileController < ApplicationController
  def dashboard
    @me = current_profile
    puts "PROFILE"
    puts @me.username.to_s

    render :text => "asdf"
  end

  def system_information
  end
end

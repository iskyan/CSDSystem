class LanguagesController < ApplicationController
  
  def idnex
    @languages = current_profile.languages.all
  end


  def show
    @language = current_profile.languages.find(params[:id])
  end

  def new
  #  @levels = SkillLevel.all.by_name
    @language = current_profile.languages.build
    #@language = Language.biu
  end

  def edit
    @language = current_profile.languages.find(params[:id])
  end

  

  def create
    @language = current_profile.languages.create(language_params)
    if @language.save
      redirect_to profile_languages_path, notice: "The language has been saved!"
    else
      render :text => "not"
    end
  end


  def update
    @language = current_profile.languages.find(params[:id])
    if @language.update(language_params)
      redirect_to profile_languages_path, notice: "The language has been updated"
      else
      render :text => "Not"
    end

  end
  
  def destroy
    @language = current_profile.languages.find(params[:id])
    @language.destroy
    respond_to do |format|
      format.html { redirect_to profile_languages_url, notice: 'Language skill was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private

  def language_params
    params.require(:language).permit!
  end

end



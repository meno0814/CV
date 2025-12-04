class PersonalInfosController < ApplicationController

  def index
    @personal_infos = PersonalInfo.all
    @contact_infos = ContactInfo.all
    @educational_background = EducationalBackground.all
    @skill = Skill.all
    @work_experience = WorkExperience.all
  end

  def show
    @personal_info = PersonalInfo.find(params[:id])
  end


end

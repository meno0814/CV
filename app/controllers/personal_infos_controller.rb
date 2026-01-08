  class PersonalInfosController < ApplicationController
    before_action :personal_info, only: [:show, :edit, :update]

    def index
      @personal_infos = PersonalInfo.all
    end

    def show
    end

    def new
      @personal_info = PersonalInfo.new
      @personal_info.contact_infos.build
      @personal_info.educational_backgrounds.build
      @personal_info.work_experiences.build
      @personal_info.skills.build
    end

    def create
      @personal_info = PersonalInfo.create!(personal_info_params)
      redirect_to @personal_info
    end

    def edit
      @personal_info.contact_infos.build if @personal_info.contact_infos.empty?
      @personal_info.educational_backgrounds.build if @personal_info.educational_backgrounds.empty?
      @personal_info.work_experiences.build if @personal_info.work_experiences.empty?
      @personal_info.skills.build if @personal_info.skills.empty?
    end

    def update
      @personal_info.update!(personal_info_params)
      redirect_to @personal_info
    end

    private

    def personal_info
      @personal_info = PersonalInfo.find(params[:id])
    end

    def personal_info_params
      params.require(:personal_info).permit(
        :first_name,
        :last_name,
        :middle_name,
        :extension,
        :dob,
        :civil_status,
        :username,
        :password,
        contact_infos_attributes: [
          :email,
          :phone_number,
          :address,
          :link
        ],
        skills_attributes: [
          :type_of_skill,
          :level_of_proficiency
        ],
        educational_backgrounds_attributes: [
          :educational_level,
          :course,
          :school,
          :date_attended,
          :date_graduated
        ],
        work_experiences_attributes: [
          :company_name,
          :position,
          :start_date,
          :end_date
        ]
      )
    end
  end

  class PersonalInfosController < ApplicationController

    def index
      @personal_infos = PersonalInfo.all
    end

    def show
      @personal_info = PersonalInfo.find(params[:id])
    end

    def new
      @personal_info = PersonalInfo.new
      @personal_info.contact_infos.build
    
    end

    def create
      personal_info = PersonalInfo.create!(personal_info_params)
      redirect_to personal_info
    end
    
    private
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
        contact_infos_attributes:[
          :email,
          :phone_number,
          :address,
          :link
        ]
      )
    end
  end

class ContactInfosController < ApplicationController
  def index
    @contact_infos = ContactInfo.all
  end

  def show
    @contact_info = ContactInfo.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

class RegistrationsController < ApplicationController
  def index
  	@registrations = Registration.by_student.paginate(:page => params[:page]).per_page(10)
  end

  def show
  	@registration = Registration.find(params[:id])
  end

  def edit
  	@registration = Registration.find(params[:id])
  end

  def new
  	@registration = Registration.new
  end
end

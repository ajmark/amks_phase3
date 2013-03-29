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
    @registration.section_id = params[:id]
  end

  def create
    @registration = Registration.new(params[:registration])
    @registration.date = Date.today
    
    if @registration.save
      redirect_to @registration.section, notice: "Successfully registered student"
    else
      render action: "new"
    end
  end

def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy
    redirect_to @section, notice: "Successfully destroyed registration"
  end

end

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
    @registration.section_id = params[:id] unless params[:id].nil? 
  end

  def create
    @registration = Registration.new(params[:registration])
    @registration.date = Date.today
    if @registration.save
      redirect_to @registration.section, notice: "Successfully created registration"
    else
      render action: "new"
    end
  end

  def update
    @registration = Registration.find(params[:id])

    if @registration.update_attributes(params[:section])
      redirect_to @registration.section, notice: "Successfully updated registration"
    else
      render action: "edit"
    end
  end

end

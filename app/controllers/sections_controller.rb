class SectionsController < ApplicationController

  def index
  	@sections = Section.alphabetical.paginate(:page => params[:page]).per_page(10)
  end

  def show
  	@section = Section.find(params[:id])
  end

  def edit
	@section = Section.find(params[:id])
  end

  def new
	@section = Section.new
  end

  def create
    @section = Section.new(params[:section])

    if @section.save
      redirect_to @section, notice: "Successfully created section"
    else
      render action: "new"
    end
  end

  def update
    @section = Section.find(params[:id])

    if @section.update_attributes(params[:section])
      redirect_to @section, notice: "Successfully updated section"
    else
      render action: "edit"
    end
  end

end

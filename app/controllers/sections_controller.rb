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

end

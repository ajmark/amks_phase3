class StudentsController < ApplicationController
  
  def index
  	@students = Student.all
  end

  def show
  	@student = Student.find(params[:id])
  end

  def new
  	@student = Student.new
  end

  def edit
    @student = Event.find(params[:id])
  end


end

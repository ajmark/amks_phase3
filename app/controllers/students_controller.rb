class StudentsController < ApplicationController
  
  def index
  	@students = Student.alphabetical.paginate(:page => params[:page]).per_page(10)
  end

  def show
  	@student = Student.find(params[:id])
  end

  def new
  	@student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(params[:student])

    if @student.save
      redirect_to @student, notice: "Successfully created #{@student.proper_name}"
    else
      render action: "new"
    end
  end

  def update
    @student = Student.find(params[:id])

    if @student.update_attributes(params[:student])
      redirect_to @student, notice: "Successfully updated #{@student.proper_name}"
    else
      render action: "edit"
    end
  end



end

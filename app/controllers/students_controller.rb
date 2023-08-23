class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "Object successfully created"
      redirect_to students_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  private 
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email)
  end
end

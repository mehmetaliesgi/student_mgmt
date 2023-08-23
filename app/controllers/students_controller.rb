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

  def show
    @student = Student.find(params[:id])
  end
  
  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
      if @student.update(student_params)
        flash[:success] = "Object was successfully updated"
        redirect_to student_path(@student)
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  
  

  private 
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email)
  end
end

class StudentsController < ApplicationController
  before_action :set_student, only: [:edit, :update, :show, :destroy]
  
  def index
    @students = Student.find_each
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "Student successfully created"
      redirect_to students_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
  end
  
  def edit
  end

  def update
      if @student.update(student_params)
        flash[:success] = "Student was successfully updated"
        redirect_to student_path(@student)
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end

  def destroy  
    @student.destroy
      flash[:success] = 'Student was successfully deleted.'
      redirect_to students_path
  end
  
  
  

  private 
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :date_of_birth, :contact, :address)
  end

  def set_student
    @student = Student.find(params[:id])
  end

end

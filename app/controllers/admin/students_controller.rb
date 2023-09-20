class Admin::StudentsController < AdminController

  before_action :set_student, only: [:edit, :update, :show, :destroy]

  helper_method :formatted_date
  
  def index
    @q = Student.ransack(params[:q])
    @pagy, @students = pagy(@q.result(distinct: true))
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      CrudNotificationMailer.create_notification(@student).deliver_now
      flash[:success] = "Student successfully created"
      redirect_to admin_students_path
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
        CrudNotificationMailer.update_notification(@student).deliver_now
        flash[:success] = "Student was successfully updated"
        redirect_to admin_student_path(@student)
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end

  def destroy  
    @student.destroy
    CrudNotificationMailer.delete_notification(@student).deliver_now
      flash[:success] = 'Student was successfully deleted.'
      redirect_to admin_students_path
  end
  
  
  

  private 
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :date_of_birth, :contact, :address, :permanent_contact_number, :local_address, :permanent_address, :alternate_contact_number, :profile_image)
  end

  def set_student
    @student = Student.find(params[:id])
  end

  def formatted_date date
    date.strftime('%A, %b %d %Y') if date.present?
  end


end

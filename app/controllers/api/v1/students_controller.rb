class Api::V1::StudentsController < Api::V1::BaseController

  def index
    render json: Student.all
  end

  def show
    render json: Student.find(params[:id])
  end

  def create
    student = Student.new(student_params)
    if student.save
      render json: student
    else
      render json: student.errors
    end
  end

  def update
    student = Student.find(params[:id])
    if student.update(student_params)
      render json: student
    else
      render json: student.errors
    end
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
    head 204
  end

  private

    def student_params
      params.require(:student).permit(:name, :last_name)
    end
end

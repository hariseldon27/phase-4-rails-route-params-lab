class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end
  def show
    student = Student.find(params[:id])
    render json: student
  end
  def search
    result = Student.where(["first_name = ? or last_name = ?", params[:q], params[:q] ])
    render json: result
  end

end

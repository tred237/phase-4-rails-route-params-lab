class StudentsController < ApplicationController

  def index
    if params.has_key?("name")
      students = Student.where("first_name = '#{params[:name].camelize}' or last_name = '#{params[:name].camelize}'")
    else 
      students = Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
end

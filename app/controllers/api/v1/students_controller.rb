class Api::V1::StudentsController < ApplicationController
  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end
  def destroy
    student = Student.find(params[:id])
    student.destroy
  end
end


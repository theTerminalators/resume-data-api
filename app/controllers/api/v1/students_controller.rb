class Api::V1::StudentsController < ApplicationController
  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end

  def show
    @student = Student.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @new_student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      personal_site: params[:personal_site],
      online_resume: params[:online_resume],
      github_url: params[:github_url],
      photo: params[:photo]
    )
    @new_student.save
    p params
    redirect_to '/students'
  end

  def update
    @edit_student = Student.find_by(id: params[:id])
    @edit_student.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      personal_site: params[:personal_site],
      online_resume: params[:online_resume],
      github_url: params[:github_url],
      photo: params[:photo]
    )
    redirect_to '/students'
  end
end

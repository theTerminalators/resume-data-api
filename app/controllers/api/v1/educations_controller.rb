class Api::V1::EducationsController < ApplicationController
  def index
    @educations = Education.all
    render 'index.json.jbuilder'
  end

  def show
    @education = Education.find_by(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @new_education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details],
      student_id: params[:student_id]
    )
    @new_education.save
    redirect_to '/educations'
  end

  def update
    @education = Education.find_by(params[:id])
    @education.update(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details],
    )
    redirect_to "/educations/#{@education.id}"
  end

  def destroy
    @education = Education.find_by(params[:id])
    @education.destroy
  end
end

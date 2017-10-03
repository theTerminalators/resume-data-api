class Api::V1::ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render 'index.json.jbuilder'
  end

  def show
    @experience = Experience.find_by(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @new_experience = Experience.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
      student_id: params[:student_id]
    )
    @new_experience.save
    redirect_to '/experiences'
  end

  def update
    @experience = Experience.find_by(params[:id])
    @experience.update(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
    )
    redirect_to "/experiences/#{@experience.id}"
  end

  def destroy
    @experience = Experience.find_by(params[:id])
    @experience.destroy
    redirect_to '/experiences'
  end
end

class Api::V1::SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render 'index.json.jbuilder'
  end
  def show
    @skill = Skill.find(params[:id])
    render 'show.json.jbuilder'
  end
  def create
    skill1 = Skill.new(
      skill_name: params[:skill_name],
      student_id: params[:student_id]
    )
    skill1.save
    p params
    redirect_to '/skills'
  end
  def update
    skill1 = Skill.find(params[:id])
    skill1.update(
      skill_name: params[:skill_name]
    )
    redirect_to '/skills'
  end
  def destroy
    skill1 = Skill.find(params[:id])
    skill1.destroy
    redirect_to '/skills'
  end
end

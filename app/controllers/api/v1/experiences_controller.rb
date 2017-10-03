class Api::V1::ExperiencesController < ApplicationController
  def index
    @experiences = Experience.find_by()
  end
end

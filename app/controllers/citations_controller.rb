class CitationsController < ApplicationController
  def index
    @citations = Citation.order('RANDOM()')
  end

  def show
    @citation = Citation.find(params[:id])
  end
end

class AuthorsController < ApplicationController
  def index
    @authors = Author.order('RANDOM()').each_slice(6).to_a
  end

  def show
    @author = Author.find(params[:id])
  end
end

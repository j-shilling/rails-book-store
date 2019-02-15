class AuthorsController < ApplicationController

  def index
    if params[:store_id].nil?
      @authors = Author.all
    else
      @authors = Store.find(params[:store_id]).authors
    end
  end

  def show
    @author = Author.find(params[:id])
  end
  
end

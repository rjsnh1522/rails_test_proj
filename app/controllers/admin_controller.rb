class AdminController < ApplicationController



  def index
    @data = Project.all
  end
end

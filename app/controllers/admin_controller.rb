class AdminController < ApplicationController



  def index
    @data = Project.all

    respond_to do |format|

      format.html
      format.json 

    end


  end
end

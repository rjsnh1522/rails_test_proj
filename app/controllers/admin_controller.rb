class AdminController < ApplicationController



  def index
    @all_products=Project.get_users_projects(current_user)
  end
end

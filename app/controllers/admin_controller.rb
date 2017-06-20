class AdminController < ApplicationController
  def index

    @all_products=Project.all
    # return render json:@all_products.count

  end
end

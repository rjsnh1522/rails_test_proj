class User < ApplicationRecord
      self.table_name = "users"
  has_secure_password
  has_many :project


  def current_user
    
  end
  
end

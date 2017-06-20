class User < ApplicationRecord
      # self.table_name = "ilance_users"
  has_secure_password
  has_many :projects


  def current_user
    
  end
  
end

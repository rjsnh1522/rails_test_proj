class User < ApplicationRecord
      # self.table_name = "ilance_users"
  has_secure_password
end

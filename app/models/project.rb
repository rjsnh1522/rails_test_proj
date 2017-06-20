class Project < ApplicationRecord
    self.table_name = "ilance_projects"
    belongs_to :user




    def self.get_users_projects(current_user)
           Project.joins(:user).where(['ilance_projects.user_id =?',current_user])
    end

end

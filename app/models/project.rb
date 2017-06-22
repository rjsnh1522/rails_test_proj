class Project < ApplicationRecord
    self.table_name = "ilance_projects"
    belongs_to :user    
    belongs_to :category , :foreign_key => "cid"


   

end

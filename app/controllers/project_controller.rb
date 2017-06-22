class ProjectController < ApplicationController


    def index

        @data = Project.all
       
    end
end

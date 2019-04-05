require "pry"


class Backer

  attr_reader :name, :backed_projects
    def initialize(name)
      @name = name
      @backed_projects = []
    end

    def back_project(project)
      @backed_projects << project
        backed_projects.each do |x|
          x.backers << self
        end
       # binding.pry
    end

end

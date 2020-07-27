
require 'pry'
class Backer

  attr_reader :name,:backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    self.backed_projects << project
    project.backers << self
    puts "self is #{self.name} & is now backing project: #{project.title}"

  end

end

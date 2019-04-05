require "pry"


class Project
  attr_reader :title, :backers

  def initialize(title)
      @title = title
      @backers = []

  end

  def add_backer(backer)
    @backers << backer
    backers.each do |x|
      x.backed_projects << self
    end
    # binding.pry
  end


end

class Project

  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(x)
    self.backers << x
    x.backed_projects << self
    puts "self is #{self.title} & is now backed by user: #{x.name}"

  end


end


require 'pry'

class Project
  attr_reader :backers, :title 
  
  def initialize(title)
    @title = title
  end
  
  def add_backer(backer)
    backer = ProjectBacker.new(self, backer)
  end

  def backers 
    backers = ProjectBacker.all.select {|backer| backer.project == self}
    backers.map {|name| name.backer}   
  end 
  
end 
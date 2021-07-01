require 'pry'

class Backer 
  attr_reader :backed_projects, :name 
  
  def initialize(name)
    @name = name
  end
  
  def back_project(project)
    project = ProjectBacker.new(project, self)
  end
  
  def backed_projects 
    backers = ProjectBacker.all.select {|project| project.backer == self}
    backers.map {|backer| backer.project}  
  end 
    
end 
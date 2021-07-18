class Project
    attr_reader :title

    @@all= []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all 
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        projects = ProjectBacker.all.select {|project| project.project == self}
        projects.map {|p| p.backer}
    end
end
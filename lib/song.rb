class Song
  attr_accessor :name, :artist_name
  @@all = []



 def self.create
    @@all.push(self.new)
    @@all[-1]
  end

  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

def self.new_by_name(name)
  @name = name
  self
end

def self.create_by_name(name)
  s = self.new
  self.@name = name 
  
  @@all.push(s)
end



end
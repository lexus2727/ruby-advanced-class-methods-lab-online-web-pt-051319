class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create
    song = self.new #initializes a new song
    @@all << song  #saves it to class variable
    song  #returns the song instance initialized and saved
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.new_by_name(name)
    #class constructor
    #takes in string name of a song
  song = self.new
  song.name = name
  song
  end
  
  def self.create_by_name(name)
    #class constructor
    #takes in string name of a song
    song = self.new
    song.name = name
    @@all << song
    song
  end
  
  def self.find_by_name(name)
    #class finder
    self.all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
  
  
    
  
  

end

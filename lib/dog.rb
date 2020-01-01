class Dog

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.print_all
    puts Dog.all.name.inspect
    # @@all.each do |name|
    #   puts name
    # end
  end

  def self.clear_all
    @@all.clear
  end



end

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

  # +#<Dog:0x0000000001a4cad0>
  #    +#<Dog:0x0000000001a4ca30>
  #    +#<Dog:0x0000000001a4c990>
  def self.print_all
    puts @@all.to_s
    # @@all.name.each do |name|
    #   puts name
    # end
  end

  def self.clear_all
    @@all.clear
  end



end

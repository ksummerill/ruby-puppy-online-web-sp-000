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
  # all array = +[#<Dog:0x000000000314a160 @name="Pluto">, #<Dog:0x000000000314a0c0 @name="Fido">, #<Dog:0x000000000314a020 @name="Maddy">]
  def self.print_all
    # puts @@all.to_s
    @@all.each do |name|
      puts name
    end
  end

  def self.clear_all
    @@all.clear
  end



end

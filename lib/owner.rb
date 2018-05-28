require 'pry'
class Owner
  attr_accessor :owner, :pets, :name, :fish, :cat, :dog
  attr_reader :species
  @@all = []

  def initialize(owner)
    @owner = owner
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    save
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish_name)
     new_fish = Fish.new(fish_name)
     pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
     new_cat = Cat.new(cat_name)
     pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    pets[:dogs] << new_dog
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end

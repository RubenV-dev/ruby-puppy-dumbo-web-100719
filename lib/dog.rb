# Add your code here
require 'pry'
class Dog
    @@all = []

    attr_reader :name


    def initialize(name)
        @name = name
        # @@all << self
        save
        # binding.pry
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        @@all.each do |dog_name|
            puts dog_name.name
        end
    end

    def save
      @@all << self
    end

end
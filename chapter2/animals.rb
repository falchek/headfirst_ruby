# Birds
class Bird
    # define readers/writers simultaneously
    attr_accessor :name, :age

    def talk
        puts "#{@name} says Chirp!  Chirp!"
    end

    def move(destination) 
        puts "#{@name} Flies to the #{destination}"
    end

    def report_age
        puts "#{@name} is #{@age} years old!"
    end

end

# The dog class!
class Dog
    # Readers are defined this way.  
    def name
        @name
    end

    # Writers are defined this way.  
    def name=(new_value)
        @name=new_value
    end

    def age
        @age
    end

    def age=(new_value) 
        @age=new_value
    end

    def make_up_name
        @name = "Libby"
    end

    def make_up_age
        @age = 17
    end

    def talk
        puts "#{@name} says Bark!"
    end

    def move(destination)
        puts "#{@name} runs to the #{destination}"
    end

    def report_age
        puts "#{@name} is #{@age} years old!"
    end

end

class Cat
    def talk
        puts "Meow!"
    end

    def move(destination) 
        puts "Running to the #{destination}"
    end
end



puts "Bird actions"
bird = Bird.new
bird.talk
bird.move("tree")

puts "Dog actions"
dog = Dog.new
dog.name = "Sammy"
dog.age = "16"
dog.talk
dog.report_age
dog.move("fire hydrant")

puts "Cat actions"
cat = Cat.new
cat.talk
cat.move("house")
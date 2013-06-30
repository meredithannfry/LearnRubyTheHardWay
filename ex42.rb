## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a object of animal (inherits)
class Dog < Animal

    def initialize(name)
        ## ??
        @name = name
    end
end

## Cat is-a object of animal (inherits)
class Cat < Animal

    def initialize(name)
        ## ??
        @name = name
    end
end

## Person is-a object
class Person

    def initialize(name)
        ## ??
        @name = name

        ## Person has-a pet of some kind
        @pet = nil
    end

    attr_accessor :pet 
end

## Employee is-a object of Person (inherits)
class Employee < Person

    def initialize(name, salary)
        ## ?? hmm what is this strange magic?
        super(name)
        ## ??
        @salary = salary
    end

end

## Fish is-a object
class Fish
end

## Salmon is-a object of Fish (inherits)
class Salmon < Fish
end

## Halibut is-a object of Fish (inherits)
class Halibut < Fish
end


## rover is an instance of Dog, that is a class of animal
rover = Dog.new("Rover")

## Satan is an instance of Cat, that is a class of animal
satan = Cat.new("Satan")

## Mary is an instance of Person
mary = Person.new("Mary")

## Mary's pet is a cat.
mary.pet = satan

## Frank is an instance of an employee, with healthy salary.
frank = Employee.new("Frank", 120000)

## Frank's pet is a dog.
frank.pet = rover

## Flipper is an instance of a fish.
flipper = Fish.new()

## Crouse is an instance of salmon, that is a class of fish.
crouse = Salmon.new()

## Harry is an instance of Halibut, that is a class of fish.
harry = Halibut.new()
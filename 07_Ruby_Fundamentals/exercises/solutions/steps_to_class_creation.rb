# 1.) define a class
class Person
# attr read and write, add a reader on name, equivalent to add a reader

  attr_reader :name, :age, :home_town
  attr_reader
  attr_writer :name, :age
  attr_accessor
  attr_accessor :name, :age # read and write
  attr_accessor :name, :age, :home_town # read and write
# A person has a person naem, age, hometown
# it also has the ability to create an instance of the class

#here define instances variables, this makes person.new available
#attributes are determined here, not by accessor.
 
  #this makes person.new available
  def initializes(name, age, home_town)

    @name = name
    @age = age
    @home_town = home_town
  end

  #attr reader
  def name
    @name # write, this are getters
  end

  #write
  def age
    @age
  end


  def home_town
    @home_town # write
  end


  def name=value
    @name =value # instance var are available within the universe of the class
                 # read
  end

end


brad = Person.new("David", 50, "New Orleans")








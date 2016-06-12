require 'Pry'

class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene
  #writers for :happiness & :hygiene below

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  #to keep index levels between 0 and 10
  # def min_max(number)
  # end

  def happiness=(new_index)
    @happiness = new_index
    @happiness = 10 if new_index > 10
    @happiness = 0 if new_index < 0
  end

  def hygiene=(new_index)
    @hygiene = new_index
    @hygiene = 10 if new_index > 10
    @hygiene = 0 if new_index < 0
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    person.happiness += 3
    self.happiness += 3
    return "Hi #{person.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
       self.happiness+=1
       person.happiness+=1
       "blah blah sun blah rain"
    else
      "blah blah blah blah blah" 
    end
  end

end

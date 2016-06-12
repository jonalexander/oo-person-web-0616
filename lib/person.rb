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
  def min_max(number)
    if number > 10
      return 10
    elsif number < 0
      return 0
    else
      number
    end
  end

  def happiness=(new_index)
    @happiness = min_max(new_index)
  end

  def hygiene=(new_index)
    # if new_index > 10
    #   @hygiene = 10
    # elsif new_index < 0
    #   @hygiene = 0
    # else
    #   @hygiene = new_index
    # end
    @hygiene = min_max(new_index)
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
    @hygiene = min_max(@hygiene + 4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene=(min_max(@hygiene - 3))
    @happiness = min_max(@happiness + 2)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    person.happiness = min_max(person.happiness + 3)
    @happiness = min_max(@happiness + 3)
    return "Hi #{person.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic = "politics"
      @happiness = min_max(@happiness - 2)
      person.happiness = min_max(person.happiness - 2)
      return 'blah blah partisan blah lobbyist'
    elsif topic = "weather"
      @happiness = min_max(@happiness + 1)
      person.happiness = min_max(person.happiness + 1)
      return 'blah blah sun blah rain'
    elsif topic != "politics" && topic != "weather"
      #does not affect happiness
      return "blah blah blah blah blah" 
    end
  end

end

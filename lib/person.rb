require 'pry'

# your code goes here
class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name, :happy
    attr_writer

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness
        if @happiness > 10
            10
        elsif @happiness < 0
            0
        else
            @happiness
        end
    end

    def hygiene
        if @hygiene > 10
            10
        elsif @hygiene < 0
            0
        else
            @hygiene
        end
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        # @hygiene += 4
        self.hygiene += 4
        # binding.pry
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        # binding.pry
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end 


    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, subject)
        if subject == "politics"
            friend.happiness -= 2
            self.happiness -= 2
          "blah blah partisan blah lobbyist"
        elsif subject == "weather"
            friend.happiness +=1
            self.happiness += 1
            "blah blah sun blah rain"
        else
             "blah blah blah blah blah"
        end
     end


end
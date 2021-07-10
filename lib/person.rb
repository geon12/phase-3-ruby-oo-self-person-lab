class Person
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account
    
    def initialize(name)
        @name = name
        @hygiene = 8
        @happiness = 8
        @bank_account = 25
    end

    def hygiene=(points)

        
        if points <= 10 && points >= 0
            @hygiene =points
        elsif points < 0
            @hygiene = 0
        else
            @hygiene = 10
        end
    end

    def happiness=(points)
        if points <= 10 && points >= 0
            @happiness = points
        elsif points < 0
            @happiness= 0
        else
            @happiness = 10
        end
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person,topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end


    end

end
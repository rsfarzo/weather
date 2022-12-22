class User
    attr_accessor :email, :first_name , :last_name
    def initialize(attributes = {})
      @first_name= attributes[:first_name]
      @last_name=attributes[:last_name]
      @email = attributes[:email]
    end
    def full_name
        "#{@first_name} #{@last_name}"
    end
    def alphabetical_name
        "#{@last_name}, #{@first_name}"        
    end
    def formatted_email
      "#{full_name} <#{@email}>"
    end
  end
  # rails c
  # > require './script.rb'
#  full_name.split == alphabetical_name.split(', ').reverse
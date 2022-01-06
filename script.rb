
#  ---------------------------------------------------------------  PRACTICE 04. SUPERMARKET.  ------------------------------------------------------------
=begin

    Description: 
        In this project you can access a supermarket
        where you will find a lot of products of 
        different areas, such as electronics, food
        and other things. You can access by being a 
        buyer or a supermarket's owner. The project
        will includes passwords such as other things.
        
        I hope you enjoy this program.
        See you later!!

    Instructions used:
        - Variables.
        - Arrays
        - If-Else Statements.
        - Classes.
        - Methods.
        - While loops.
        - For loops.

    Author:
        - Jorge Ortiz Mata.
        - San Luis Potosí S.L.P. México
        - ortiz.mata.jorge@gmail.com
        - +52 (444) 576 3034.
=end

# ------------------------------------------------ START -------------------------------------------------

# ---- CLASSES ------

class Computers
    attr_accessor :type, :price, :quantity
    def initialize(type_computer, price_computer, quantity_computer)
        @type = type_computer
        @price = price_computer
        @quantity = quantity_computer
    end
end

class Cigarretes
    attr_accessor :type, :price, :quantity
    def initialize(type_cigarrete, price_cigarrete, quantity_cigarrete)
        @type = type_cigarrete
        @price = price_cigarrete
        @quantity = quantity_cigarrete
    end    
end

class Fruits
    attr_accessor :type, :price, :quantity
    def initialize(type_fruit, price_fruit, quantity_fruit)
        @type = type_fruit
        @price = price_fruit
        @quantity = quantity_fruit
    end
end

class Owners
    attr_accessor :name, :password
    def initialize(name_owner, password_owner)
        @name = name_owner
        @password = password_owner
    end
end

# ---- VARIABLES ------

user_option = 0

owner_name = "Jorge"
owner_password = "1011"
owner_help = "user: Jorge, password: 11 B"

# ---- ARRAYS ------

owner_info = Array.new
owner_info = [owner_name, owner_password, owner_help]

owners = Array.new
owners = [owner_info]

# ---- METHODS ------

def findUser(user_name, user_password, owners[])

    if(user_name == owner_name) && (user_password == owner_password)
        puts "Welcome: #{user_name}."

    else
        puts "Password or user's name wrong. Please, try again."
        puts "\n"
    end

end

# ---- STEPS ------

# Step 00. Welcome Message.

puts "\n"
puts "Hello! This is the George's supermarket where you can find anything here."

# Step 10. User's choice.

while user_option != 3

    puts "Before to get started, please, tell me, Are you a buyer or a supermarket's owner? " 
    puts "\n"
    puts "(1) Buyer." 
    puts "(2) Owner." 
    puts "(3) Leave." 
    puts "\n"
    print "R: "
    user_option = Integer(gets.chomp)
    puts "\n"

# Step 20. Case's options.

    case user_option

# Step 30. Buyer's option.

        when user_option = 1
            puts "You've chosen Buyer's Option."

# Step 40. Owners' option.

        when user_option = 2
            puts "You've chosen Owner's Option."
            puts "\n"

            puts "Please, introduce the user's name and the password."
            puts "Help: #{owner_help}"
            puts "\n"

            print "User's name: "
            user_name = (gets.chomp).to_s
            puts "\n"
            print "Password: "
            user_password = (gets.chomp).to_s

# Step 50. Leave option.

        when user_option = 3
            puts "You've chosen Leave's Option."
            puts "\n"

# Step 60. Wrong option.

        else
            puts "You've chosen a wrong option. Please, try again."
            user_option = 0
            puts "\n"
    end
end

# ------------------------------------------------- END --------------------------------------------------

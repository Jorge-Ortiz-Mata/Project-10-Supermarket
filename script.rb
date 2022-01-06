
#  ---------------------------------------------------------------  PRACTICE 04. SUPERMARKET.  ------------------------------------------------------------
=begin

    Description: 
        In this project you can access to a supermarket
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

# ------------------------------------------------ HELP -------------------------------------------------

=begin

# ------- EXAMPLE 01. Adding arrays to a method. ------

def arrayFunction(namesf)
    for i in 0...namesf.length
        puts "The name is: #{namesf[i]}"
    end
end
names = ["Jorge", "Maria", "Ana", "Jose", "Maria"]
arrayFunction(names)

# -- The name is: Jorge
# -- The name is: Maria
# -- The name is: Ana
# -- The name is: Jose
# -- The name is: Maria

# ------- EXAMPLE 02. Print 2D arrays. --------

name = "Jorge"
age = 25
name_2 = "Zaira"
age_2 = 20
info_1 = [name, age]
info_2 = [name_2, age_2]
people = [info_1, info_2]

print people
# -- [["Jorge", 25], ["Zaira", 20]]
puts "\n"

puts people[0][1]
puts people[1][0]
# -- 25
# -- Zaira

# ------- EXAMPLE 03. Returning more than one value. --------

numbers = [20, 8]
def operations(numbers)
    add_res = numbers[0] + numbers[1]
    sub_res = numbers[0] - numbers[1]
    return add_res, sub_res
end

result_add, result_sub = operations(numbers)
puts "Add is #{result_add}"
puts "Add is #{result_sub}"

# ------- EXAMPLE 04. Adding objects to an array. --------

class Owners
    attr_accessor :name, :password
    def initialize(name_owner, password_owner)
        @name = name_owner
        @password = password_owner
    end
end

people = Array.new

name = "Jorge"
pass = "1010"
person = Owners.new(name, pass)
puts "Person 1 is: #{person}"
people.push(person)

name = "Ana"
pass = "1090"
person = Owners.new(name, pass)
puts "Person 2 is: #{person}"
people.push(person)

for i in 0...people.length
    puts people[i].name
end

# ------- EXAMPLE 05. Delete an specific object from an array. --------

numbers = [2, 65, 3, 24, 19]
numbers.delete_at(3)
print numbers

=end

# ----------------------------------------------------------------------- START -------------------------------------------------

# --------------------------- CLASSES ------

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

# ---------------------------- METHODS ------

def loginUser(user_name, user_password, owners)
    
    response = false
    
    for i in 0...owners.length
        
        if user_name == owners[i].name && user_password == owners[i].password
            puts "\n"
            puts "Welcome: #{owners[i].name}"
            response = true
        elsif i == (owners.length - 1) && response == false
            puts "Sorry, user's name or password invalid. Try again later. "
            response = false
        end
    end
    return response
end

# ---------------------------- VARIABLES ------

user_option = 0
owner_option = 0
current_owners = 0
delete_user = 0
delete_option = 0

new_user_name = ""
new_user_password = ""
new_user_phrase = ""

owner_name = "Jorge"
owner_password = "1011"

create_user = Owners.new(owner_name, owner_password)

# ----------------------------- ARRAYS ------

owners = Array.new
owners.push(create_user)

# ------------------------------------------------------------ STEPS -----------------------------------------------

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

# Step 41. Get Owner's parameters.

            puts "Please, introduce the user's name and the password."
            puts "\n"

            print "User's name: "
            user_name = (gets.chomp).to_s
            puts "\n"
            print "Password: "
            user_password = (gets.chomp).to_s

# Step 42. Sned Owner's parameters.

            response = loginUser(user_name, user_password, owners)

# Step 43. If Owner's parameters are OK?.

            if response
                puts "\n"

# Step 44. Owner's actions.
                
                while owner_option != 5

                    puts "What do you want to do sir? "
                    puts "\n"
                    puts "(1) Add objects to the store."
                    puts "(2) Add another user."
                    puts "(3) Delete a user."
                    puts "(4) See currents users."
                    puts "(5) Leave."
                    print "R: "
                    owner_option = Integer(gets.chomp)

# Step 45. Case owner's option.
                    
                    case owner_option

# Step 46-1. Add Objects to the store.

                        when owner_option = 1

# Step 46-2. Add another user.

                        when owner_option = 2
                            puts "\n"
                            puts "You've decided to add a new user."
                            print "Please, introduce the new user's name: "
                            new_user_name = (gets.chomp).to_s
                            print "Now, introduce the new user's password: "
                            new_user_password = (gets.chomp).to_s

                            create_user = Owners.new(new_user_name, new_user_password)
                            owners.push(create_user)

# Step 46-3. Delete a user.

                        when owner_option = 3
                            puts "\n"
                            puts "You've decided to delete a user."
                            puts "These are the users in the database: "
                            puts "\n"
                            for i in 0...owners.length
                                puts "USER (#{i}). NAME'S USER: #{owners[i].name}, PASSWORD: #{owners[i].password}"
                            end
                            puts "\n"
                            print "Which one do you want to delete (please enter the user's number): "
                            delete_user = Integer(gets.chomp)
                            if delete_user < owners.length
                                puts "\n"
                                puts "You've selected this user: NAME'S USER: #{owners[delete_user].name}, PASSWORD: #{owners[delete_user].password}"
                                puts "Are you sure do you want to delete it?"
                                puts "\n"
                                puts "(1) Yes."
                                puts "(2) No."
                                puts "\n"
                                print "R: "
                                delete_option = Integer(gets.chomp)

                                if delete_option == 1
                                    puts "\n"
                                    puts "The user: NAME'S USER: #{owners[delete_user].name}, PASSWORD: #{owners[delete_user].password}, has been deleted."
                                    owners.delete_at(delete_user)
                                elsif delete_option == 2
                                    puts "You've decided to not delete this user."
                                end

                            else
                                puts "\n"
                                puts "You've typed a wrong parameter: #{delete_user}." 
                                puts "Please, try again."
                                puts "\n"
                            end

                            delete_user = 0
                            delete_option = 0

# Step 46-4. See users in platform.

                        when owner_option = 4
                            puts "\n"
                            puts "You've decided to see all the users."
                            puts "These are the users in the database: "
                            puts "\n"

                            for i in 0...owners.length
                                puts "USER: #{owners[i].name}, PASSWORD: #{owners[i].password}"
                            end

# Step 46-5. Leave.

                        when owner_option = 5
                            puts "\n"
                            puts "You've decided to leave."

# Step 46-5. Wrong parameter.
                        else
                            puts "\n"
                            puts "You've introduce a different value."
                            puts "Please, try again."
                            owner_option = 0
                    end 
                    puts "\n"
                end

                owner_option = 0

# Step 49. If Owner's parameters are NOK?.
                
            elsif response == false
                puts "\n"
            end

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

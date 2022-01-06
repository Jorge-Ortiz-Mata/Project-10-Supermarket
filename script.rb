
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

class Buyers
    attr_accessor :name, :address, :bank_account, :buyer_money
    def initialize(buyer_name, buyer_address, buyer_bank_account, buyer_money)
        @name = buyer_name
        @address = buyer_address
        @bank_account = buyer_bank_account
        @buyer_money = buyer_money
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

def seeComputersAvailable(computers_stock)
    puts "\n"
    puts "These are the available products for: COMPUTERS."
    puts "\n"

    for i in 0...computers_stock.length
        puts "#{i}. COMPUTER: #{computers_stock[i].type}, PRICE: #{computers_stock[i].price}, QUANTITY: #{computers_stock[i].quantity}"
    end
    puts "\n"
end

def seeCigarretesAvailable(cigarretes_stock)
    puts "\n"
    puts "These are the available products for: CIGARRETES."
    puts "\n"

    for i in 0...cigarretes_stock.length
        puts "#{i}. CIGARRETES: #{cigarretes_stock[i].type}, PRICE: #{cigarretes_stock[i].price}, QUANTITY: #{cigarretes_stock[i].quantity}"
    end
    puts "\n"
end

def seeFruitsAvailable(fruits_stock)
    puts "\n"
    puts "These are the available products for: FRUITS."
    puts "\n"

    for i in 0...fruits_stock.length
        puts "#{i}. FRUIT: #{fruits_stock[i].type}, PRICE: #{fruits_stock[i].price}, QUANTITY: #{fruits_stock[i].quantity}"
    end
    puts "\n"
end

# ---------------------------- VARIABLES ------

buyer_name = ""
buyer_address = ""
buyer_bank_account = ""
buyer_money = 0

type_computer = "HP"
price_computer = "499.99"
quantity_computer = 3

type_cigarrete = "Marlboro"
price_cigarrete = "9.99"
quantity_cigarrete = 2

type_fruit = "Apple"
price_fruit = "2.99"
quantity_fruit = 5

user_option = 0
owner_option = 0
current_owners = 0
delete_user = 0
delete_option = 0
buyer_option = 0
option_available = 0
buy_product_option = 0

new_user_name = ""
new_user_password = ""
new_user_phrase = ""
product_option = ""

owner_name = "Jorge"
owner_password = "1011"

# ----------------------------- OBJECTS ------

create_computer = Computers.new(type_computer, price_computer, quantity_computer)
create_cigarretes = Cigarretes.new(type_cigarrete, price_cigarrete, quantity_cigarrete)
create_fruit = Fruits.new(type_fruit, price_fruit, quantity_fruit)
create_user = Owners.new(owner_name, owner_password)

# ----------------------------- ARRAYS ------

computers_stock = Array.new
cigarretes_stock = Array.new
fruits_stock = Array.new
owners = Array.new
buyers_stock = Array.new

computers_stock.push(create_computer)
cigarretes_stock.push(create_cigarretes)
fruits_stock.push(create_fruit)
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

# Step 31. Buyer's choice.

            while buyer_option != 3
            puts "\n"
            puts "Hello dear user. What do you want to do: "
            puts "\n"
            puts "(1). See available products."
            puts "(2). Buy a product."
            puts "(3). Leave"
            puts "\n"
            buyer_option = Integer(gets.chomp)

                case buyer_option

                    when buyer_option = 1
                        puts "\n"
                        puts "You've decided to see available products."

                        while option_available != 4
                            puts "\n"
                            puts "What kind of products do you want to see: "
                            puts "\n"
                            puts "(1) Computers."
                            puts "(2) Cigarretes."
                            puts "(3) Fruits."
                            puts "(4) Leave."
                            puts "\n"
                            print "R: "
                            option_available = Integer(gets.chomp)

                            case option_available

                                when option_available = 1
                                    puts "\n"
                                    seeComputersAvailable(computers_stock)
                                    option_available = 0

                                when option_available = 2
                                    puts "\n"
                                    seeCigarretesAvailable(cigarretes_stock)
                                    option_available = 0

                                when option_available = 3
                                    puts "\n"
                                    seeFruitsAvailable(fruits_stock)
                                    option_available = 0

                                when option_available = 4
                                    puts "\n"
                                    puts "You've decided to leave."

                                else
                                    puts "\n"
                                    puts "You've introduce awrong parameter. Please, try again."
                                    puts "\n"
                                    option_available = 0
                            end
                        end
                        
                        buyer_option = 0

                    when buyer_option = 2
                        puts "\n"
                        puts "You've decided to buy products."

                        while buy_product_option != 4
                            puts "\n"
                            puts "What kind of product do you wish to buy?"
                            puts "\n"
                            puts "(1). Buy computers."
                            puts "(2). Buy cigarretes."
                            puts "(3). Buy fruits."
                            puts "(4). Leave."
                            puts "\n"
                            print "R: "
                            buy_product_option = Integer(gets.chomp)

                            case buy_product_option

                                when buy_product_option = 1
                                    puts "\n"
                                    puts "You've decided to buy a computer. "

                                    #------------------
                                    puts "\n"
                                    puts "Before to make the purchase, please introduce some information."
                                    puts "\n"
                                    print "Introduce your full name: "
                                    buyer_name = (gets.chomp).to_s
                                    print "Now, please, introduce your address: "
                                    buyer_address = (gets.chomp).to_s
                                    print "Introduce your bank account: "
                                    buyer_bank_account = (gets.chomp).to_s
                                    print "Finally, introduce the amount of money that you have: "
                                    buyer_money = (gets.chomp).to_f 
                                    create_buyer = Buyers.new(buyer_name, buyer_address, buyer_bank_account, buyer_money)
                                    buyers_stock.push(create_buyer)
                                    puts "Thank you!"
                                    puts "\n"
                                    #------------------

                                    puts "\n"
                                    seeComputersAvailable(computers_stock)
                                    puts "\n"
                                    print "Which computer do you want to buy? "
                                    
                                    
                                    




                                    buy_product_option = 0

                                when buy_product_option = 2
                                    puts "\n"
                                    puts "You've decided to buy cigarretes. "

                                    #------------------
                                    puts "\n"
                                    puts "Before to make the purchase, please introduce some information."
                                    puts "\n"
                                    print "Introduce your full name: "
                                    buyer_name = (gets.chomp).to_s
                                    print "Now, please, introduce your address: "
                                    buyer_address = (gets.chomp).to_s
                                    print "Introduce your bank account: "
                                    buyer_bank_account = (gets.chomp).to_s
                                    print "Finally, introduce the amount of money that you have: "
                                    buyer_money = (gets.chomp).to_f 
                                    create_buyer = Buyers.new(buyer_name, buyer_address, buyer_bank_account, buyer_money)
                                    buyers_stock.push(create_buyer)
                                    puts "Thank you!"
                                    puts "\n"
                                    #------------------

                                    puts "\n"
                                    seeCigarretesAvailable(cigarretes_stock)









                                    buy_product_option = 0

                                when buy_product_option = 3
                                    puts "\n"
                                    puts "You've decided to buy fruit. "

                                    #------------------
                                    puts "\n"
                                    puts "Before to make the purchase, please introduce some information."
                                    puts "\n"
                                    print "Introduce your full name: "
                                    buyer_name = (gets.chomp).to_s
                                    print "Now, please, introduce your address: "
                                    buyer_address = (gets.chomp).to_s
                                    print "Introduce your bank account: "
                                    buyer_bank_account = (gets.chomp).to_s
                                    print "Finally, introduce the amount of money that you have: "
                                    buyer_money = (gets.chomp).to_f 
                                    create_buyer = Buyers.new(buyer_name, buyer_address, buyer_bank_account, buyer_money)
                                    buyers_stock.push(create_buyer)
                                    puts "Thank you!"
                                    puts "\n"
                                    #------------------

                                    puts "\n"
                                    seeFruitsAvailable(fruits_stock)






                                    buy_product_option = 0

                                when buy_product_option = 4
                                    puts "\n"
                                    puts "You've decided to leave. "
                                    puts "\n"

                                else
                                    puts "\n"
                                    puts "You've introduced a wrong parameter."
                                    buy_product_option = 0
                                    puts "\n"
                            end
                        end

                        buy_product_option = 0
                        buyer_option = 0
                        
                    when buyer_option = 3
                        puts "\n"
                        puts "You've decided to leave."
                        puts "Have a wonderful day!!!"
                        puts "\n"

                    else
                        puts "\n"
                        puts "You've introduced a wrong parameter."
                        buyer_option = 0
                        puts "\n"

                end
            end

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
                            puts "\n"
                            puts "You've decided to add a objects to the store."
                            puts "The current objects that we have in store are: "
                            puts "\n"
                            puts "(1) Computers."
                            puts "(2) Cigarretes."
                            puts "(3) Fruits."
                            puts "(4) Leave."
                            puts "\n"
                            print "Which product do you want to add into the store? "
                            product_option = Integer(gets.chomp)

                            while product_option != 4

                                case product_option

                                    when product_option = 1
                                        puts "\n"
                                        puts "You've chosen Computers."                                    
                                        puts "\n"
                                        print "Please, introduce the computer's type (HP, MAC, LENOVO, ASUS): "
                                        type_computer = (gets.chomp).to_s
                                        print "Now, introduce the computer's price: "
                                        price_computer = (gets.chomp).to_s
                                        print "Finally, introduce the amount of computers you will store: "
                                        quantity_computer = Integer(gets.chomp)
                                        create_computer = Computers.new(type_computer, price_computer, quantity_computer)
                                        computers_stock.push(create_computer)
                                        puts "\n"
                                        puts "Now, These are all the computers that we have in stock: "   
                                        puts "\n"

                                        for i in 0...computers_stock.length
                                            puts "COMPUTER: #{computers_stock[i].type}, PRICE: #{computers_stock[i].price}, QUANTITY: #{computers_stock[i].quantity}"
                                        end

                                        type_computer = ""
                                        price_computer = ""
                                        quantity_computer = 0
                                        product_option = 0

                                    when product_option = 2
                                        puts "\n"
                                        puts "You've chosen Cigarretes."
                                        puts "\n"
                                        print "Please, introduce the Cigarrete's type (Marlboro, Pall Mall, Winston): "
                                        type_cigarrete = (gets.chomp).to_s
                                        print "Now, introduce the computer's price: "
                                        price_cigarrete = (gets.chomp).to_s
                                        print "Finally, introduce the amount of computers you will store: "
                                        quantity_cigarrete = Integer(gets.chomp)
                                        create_cigarretes = Computers.new(type_cigarrete, price_cigarrete, quantity_cigarrete)
                                        cigarretes_stock.push(create_cigarretes)
                                        puts "\n"
                                        puts "Now, These are all the computers that we have in stock: "   
                                        puts "\n"

                                        for i in 0...cigarretes_stock.length
                                            puts "COMPUTER: #{cigarretes_stock[i].type}, PRICE: #{cigarretes_stock[i].price}, QUANTITY: #{cigarretes_stock[i].quantity}"
                                        end

                                        type_cigarrete = ""
                                        price_cigarrete = ""
                                        quantity_cigarrete = 0  
                                        product_option = 0

                                    when product_option = 3
                                        puts "\n"
                                        puts "You've chosen Fruits."
                                        puts "\n"
                                        print "Please, introduce the Fruit's type (Apple, Orange, Peach): "
                                        type_fruit = (gets.chomp).to_s
                                        print "Now, introduce the computer's price: "
                                        price_fruit = (gets.chomp).to_s
                                        print "Finally, introduce the amount of computers you will store: "
                                        quantity_fruit = Integer(gets.chomp)
                                        create_fruit = Computers.new(type_fruit, price_fruit, quantity_fruit)
                                        fruits_stock.push(create_fruit)
                                        puts "\n"
                                        puts "Now, These are all the computers that we have in stock: "   
                                        puts "\n"

                                        for i in 0...fruits_stock.length
                                            puts "COMPUTER: #{fruits_stock[i].type}, PRICE: #{fruits_stock[i].price}, QUANTITY: #{fruits_stock[i].quantity}"
                                        end

                                        type_fruit = ""
                                        price_fruit = ""
                                        quantity_fruit = 0
                                        product_option = 0

                                    when product_option = 4
                                        puts "\n"
                                        puts "You've decided to leave."
                                        puts "\n"

                                    else
                                        puts "\n"
                                        puts "You've chose a different optioon from the menu. Please, try again."
                                        product_option = 0
                                        puts "\n"
                                end
                            end
                            product_option = 0

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

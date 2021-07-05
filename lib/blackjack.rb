require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_choice = gets.chomp
  user_choice
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = 0
  2.times do 
  card_total += deal_card
end
display_card_total(card_total)
card_total
end

def hit?(initial_round)
  prompt_user
  choice = get_user_input
  new_total = 0
  if choice == "h"
    new_card = deal_card
    new_total = new_card + initial_round
  elsif choice == "s"
    new_total = initial_round
  elsif choice != "h" && choice != "s"
    invalid_command
    hit?(initial_round)
  end
  new_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  value = initial_round
  #display_card_total(value)
  if value >= 21
    end_game(value)
  elsif value < 21
    counter = value
    until counter >= 21
      counter = hit?(counter)
      display_card_total(counter)
    end
    end_game(counter)
  end
end
    

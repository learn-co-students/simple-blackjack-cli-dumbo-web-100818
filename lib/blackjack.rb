def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
end

def end_game(card_total)
  print "Sorry"
  print card_total
  print "Thank you"
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  print display_card_total(total)
  return total
end

def hit?(int)
  prompt_user
  answer = get_user_input
  if answer == "h"
    int += deal_card
  elsif answer == "s"
    return int
    end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = hit?(initial_round)
  until hand > 21
    display_card_total(hand)
    hand += hit?(deal_card)
    end
    display_card_total(hand)
    end_game(hand)
end

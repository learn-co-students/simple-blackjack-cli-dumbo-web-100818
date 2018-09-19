def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
end

def display_card_total(tol)
  # code #display_card_total here
puts "Your cards add up to #{tol}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  blah = gets.chomp
  blah
end

def end_game(whoa)
  # code #end_game here
  puts "Sorry, you hit #{whoa}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  puts "Your cards add up to #{sum}"
  sum


end

def hit?(num)
  # code hit? here
prompt_user
type = get_user_input

case type
when "h"
  num += deal_card
when "s"
  num
end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  blah = initial_round

until blah > 21
blah = hit?(blah)
display_card_total(blah)
end
end_game(blah)
end

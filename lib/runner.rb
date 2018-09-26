require_relative "blackjack.rb"

def runner
  welcome
  total = initial_round
  total = hit? (total)
  display_card_total(total)
  until total > 21
  end
end_game (total)
end

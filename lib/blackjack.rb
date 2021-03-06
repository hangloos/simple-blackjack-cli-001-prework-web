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
  input = gets.strip
end

def end_game(card_total)

  puts "Sorry, you hit #{card_total}. Thanks for playing!"

end

def initial_round

  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total

end

def hit?(card_total)
  prompt_user
  draw = get_user_input

  if draw != "h" && draw != "s"
    prompt_user
  elsif draw == "h"
    new_card_total = deal_card + initial_round
  end
  return new_card_total

end


def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end


def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card=Random.rand(1..11)
  return card
end

def display_card_total(cards)
  # code #display_card_total here
  puts "Your cards add up to #{cards}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"  
end

def get_user_input
  # code #get_user_input here
  call=gets.chomp
  return call
end

def end_game(cards)
  # code #end_game here
  puts "Sorry, you hit #{cards}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_1=deal_card
  card_2=deal_card
  cards=card_1+card_2
  display_card_total(cards)
  return cards
end

def hit? (cards)
  # code hit? here
  prompt_user
  call=get_user_input
  if call=="h"
    cards+=deal_card
  elsif call=="s"
    cards
  else
    invalid_command
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
  cards = initial_round
  until cards>21
    cards=hit?(cards)
    display_card_total(cards)
  end
  end_game(cards)
end
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card

  1 + rand(11)

end

def display_card_total(card_total)

puts  "Your cards add up to #{card_total}"

end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input

       answer = gets.chomp

end

def end_game(card_total)

  puts "Sorry, you hit #{card_total}. Thanks for playing!"

end



def initial_round
  sum = 0
 sum += deal_card

sum += deal_card

display_card_total(sum)

sum
end


def hit?(current_card_total)
  prompt_user

  input = get_user_input

  if input == 'h'
  current_card_total += deal_card
  end

  if input != 'h' && input != 's'
    invalid_command
  end

  current_card_total

end

def invalid_command
  puts "Please enter a valid command"

  prompt_user

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome

 game_total = initial_round
while game_total <= 21 do
game_total = hit?(game_total)
display_card_total(game_total)
end

end_game(game_total )

end

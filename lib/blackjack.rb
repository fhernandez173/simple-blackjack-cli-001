def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum_of_deal = deal_card + deal_card
  display_card_total(sum_of_deal)
  return sum_of_deal
end

def hit?(card_value)
  prompt_user
  answer = get_user_input
  if answer == 'h'
    card_value += deal_card
  end
  return card_value
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
   until sum > 21 do
    sum = hit?(sum)
    display_card_total(sum)
    #sum += sum
  end
    end_game(sum)
end
#runner

# def runner
#   welcome
#   sum = initial_round
#   until hit?(sum) > 21 do
#     display_card_total(sum)
#     end_game
#   end
# end

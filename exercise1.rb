
def select_cards(possible_cards, hand)
  count = 0
  @hand = hand
  possible_cards.each do |current_card|
    print "Do you want to pick up #{current_card}?"
    answer = gets.chomp.downcase
    if @hand.count < 3 && count < 3 && answer == "y"
      @hand << current_card
      count += 1
    elsif @hand.count == 3
      puts "your hand is full. You may only have 3 cards"
      count += 1
    elsif answer == "n" && @hand.count < 3 && count > 2
      puts "you must take the card"
      @hand << current_card
      count += 1
    else
      count += 1
    end

  end
    return hand

end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"

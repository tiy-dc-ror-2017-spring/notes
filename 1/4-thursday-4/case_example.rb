case hand_type
when "hard"
  hand_finder(user_hand, dealer_card, hard_data_one_deck)
when "soft"
  hand_finder(user_hand, dealer_card, soft_data_one_deck)
when "paired"
  hand_finder(user_hand, dealer_card, paired_data_one_deck)
end

if hand_type == "hard"
  hand_finder(user_hand, dealer_card, hard_data_one_deck)
elsif hand_type == "soft"
  hand_finder(user_hand, dealer_card, soft_data_one_deck)
elsif hand_type == "paired"
  hand_finder(user_hand, dealer_card, paired_data_one_deck)
end

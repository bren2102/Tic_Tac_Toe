def print_board(array)
  puts "7  |8  |9  "
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
  puts "___|___|___"
  puts "4  |5  |6  "
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "___|___|___"
  puts "1  |2  |3  "
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "   |   |   "
end

def validate_user_name(player_name)
  if player_name.include? " "
    return false
  elsif player_name == ''
    return false
  else
    return true
  end
end

def validate_input_board_cell(board_array,player_turn,number)
  invalid_input = true
    invalid_input = number < 0 || number > 8
    return 'Please only write a number from 1 to 9' if invalid_input
    if board_array[number] == " "
      return ""
    else
      return "Only play in an empty cell"
      invalid_input = true
    end
end

def validate_input_play_again(input)
  input.downcase!
  if input != "y" && input != "n"
    false
  else 
    true
  end
end

def win(board_array,player_turn,player_name)
  if player_turn == 1
    cel = "X"
  else
    cel = "O"
  end

  win_case_1 = cel == board_array[0] && cel == board_array[1] && cel == board_array[2]
  win_case_2 = cel == board_array[3] && cel == board_array[4] && cel == board_array[5] 
  win_case_3 = cel == board_array[6] && cel == board_array[7] && cel == board_array[8] 
  win_case_4 = cel == board_array[0] && cel == board_array[3] && cel == board_array[6] 
  win_case_5 = cel == board_array[1] && cel == board_array[4] && cel == board_array[7] 
  win_case_6 = cel == board_array[2] && cel == board_array[5] && cel == board_array[8] 
  win_case_7 = cel == board_array[0] && cel == board_array[4] && cel == board_array[8] 
  win_case_8 = cel == board_array[6] && cel == board_array[4] && cel == board_array[2]

  if win_case_1 || win_case_2 || win_case_3 || win_case_4 || win_case_5 || win_case_6 || win_case_7 || win_case_8
    return "#{player_turn} Wins!"
  elsif board_array.all?{ |value| value != ' '}
    return "Tie"
  else    
    return ""
  end
end
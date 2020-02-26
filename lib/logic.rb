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

def validate_input(board_array,player_turn,number)
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

def win(board_array,player_turn)
  if player_turn == 1
    cel = "X"
  else
    cel = "O"
end
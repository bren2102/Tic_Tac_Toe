def print_board(array)
  puts '7  |8  |9  '
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
  puts '___|___|___'
  puts '4  |5  |6  '
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts '___|___|___'
  puts '1  |2  |3  '
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts '   |   |   '
end

def validate_user_name(player_name)
  if player_name.include? ' '
    false
  else
    player_name != ''
  end
end

def validate_input_board_cell(board_array, _player_turn, number)
  invalid_input = number.negative? || number > 8
  puts number
  return 'Please only write a number from 1 to 9' if invalid_input

  return 'Only play in an empty cell' unless board_array[number] == ' '

  ''
end

def validate_input_play_again(input)
  input.downcase!
  if input != 'y' && input != 'n'
    false
  else
    true
  end
end

def win(board_array, player_turn, _player_name)
  cel = if player_turn == 1
          'X'
        else
          'O'
        end

  win_one = cel == board_array[0] && cel == board_array[1] && cel == board_array[2]
  win_two = cel == board_array[3] && cel == board_array[4] && cel == board_array[5]
  win_tree = cel == board_array[6] && cel == board_array[7] && cel == board_array[8]
  win_four = cel == board_array[0] && cel == board_array[3] && cel == board_array[6]
  win_five = cel == board_array[1] && cel == board_array[4] && cel == board_array[7]
  win_six = cel == board_array[2] && cel == board_array[5] && cel == board_array[8]
  win_seven = cel == board_array[0] && cel == board_array[4] && cel == board_array[8]
  win_eight = cel == board_array[6] && cel == board_array[4] && cel == board_array[2]

  if win_one || win_two || win_tree || win_four || win_five || win_six || win_seven || win_eight
    "#{player_turn} Wins!"
  elsif board_array.all? { |value| value != ' ' }
    'Tie'
  else
    ''
  end
end

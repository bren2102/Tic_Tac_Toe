class GameLogic
  def validate_user_name(player_name)
    if player_name.include? ' '
      false
    else
      player_name != ''
    end
  end

  def validate_input_board_cell(board_array, _player_turn, number)
    invalid_input = number.negative? || number > 8
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

  def check_tie(board_array)
    board_array.all? { |value| value != ' ' }
  end

  def check_win_one(board_array, cel)
    win_condition = []
    win_condition.push(cel == board_array[0] && cel == board_array[1] && cel == board_array[2])
    win_condition.push(cel == board_array[3] && cel == board_array[4] && cel == board_array[5])
    win_condition.any? { |value| value == true }
  end

  def check_win_two(board_array, cel)
    win_condition = []
    win_condition.push(cel == board_array[6] && cel == board_array[7] && cel == board_array[8])
    win_condition.push(cel == board_array[0] && cel == board_array[3] && cel == board_array[6])
    win_condition.any? { |value| value == true }
  end

  def check_win_three(board_array, cel)
    win_condition = []
    win_condition.push(cel == board_array[1] && cel == board_array[4] && cel == board_array[7])
    win_condition.push(cel == board_array[2] && cel == board_array[5] && cel == board_array[8])
    win_condition.any? { |value| value == true }
  end

  def check_win_four(board_array, cel)
    win_condition = []
    win_condition.push(cel == board_array[0] && cel == board_array[4] && cel == board_array[8])
    win_condition.push(cel == board_array[6] && cel == board_array[4] && cel == board_array[2])
    win_condition.any? { |value| value == true }
  end

  def check_all_wins(board_array, cel)
    win_condition = []
    win_condition.push(check_win_one(board_array, cel))
    win_condition.push(check_win_two(board_array, cel))
    win_condition.push(check_win_three(board_array, cel))
    win_condition.push(check_win_four(board_array, cel))
    win_condition.any? { |value| value == true }
  end

  def win(board_array, player_turn, player_name)
    cel = player_turn == 1 ? 'X' : 'O'

    if check_all_wins(board_array, cel)
      "#{player_name} Wins!"
    elsif check_tie(board_array)
      'Tie'
    else
      ''
    end
  end
end

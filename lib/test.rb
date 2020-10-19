

def reset 
  options = %w[y n yes no]
  loop do
    puts 'Do u want another game: y/n?'
    player_options = gets.chomp.downcase
    if options.include? player_options
      if player_options == 'yes'|| player_options == 'y'
        flag = true
      else
        flag = false
      end
      return flag
    else
      puts 'Sorry,Invalid option'
    end
    return flag
  end
end

reset_game = reset
if reset_game == true
  puts 'gsdg'
else
  break
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def play(song_array)
  song_name = nil
  puts "Please enter a song name or number:"
  user_input = gets.strip
  song_array.each_with_index do |song, index|
    if user_input.to_s == song || (user_input.to_i - 1) == index
      song_name = song
    end 
  end 
  if song_name != nil 
    return puts "Playing #{song_name}"
  else 
    return puts "Invalid input, please try again"
  end 
end 

def list(song_array)
  song_array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(song_array)
  user_input = nil
  until user_input == "exit"
    puts "Please enter a command:"
    user_input = gets.strip
    if user_input == "help"
      help
    elsif user_input == "play"
      play(song_array)
    elsif user_input == "list"
      list(song_array)
    elsif user_input == "exit"
      exit_jukebox
    end
  end
end 
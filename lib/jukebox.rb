def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def play(song_array)
  check = false
  song_name = nil
  puts "Please enter a song name or number:"
  user_input = gets.strip
  song_array.each_with_index do |song, index|
    if user_input == song || (user_input.to_i - 1) == index
      check = true 
      song_name == song
    end 
  end 
  if check == true 
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
end 
def songs
  songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
  ]
  return songs
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  
  if user_input.to_i < songs.length and user_input.to_i > 0 or not songs.include? user_input.to_s
    puts "Invalid input, please try again"
  else
    if user_input.is_a? Integer
      song_name = songs[user_input]
    else
      song_name = user_input
    end
    puts "Playing #{song_name}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

play(songs)
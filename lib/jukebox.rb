
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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index{ |value, index| puts "#{index+1}. #{value}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if user_input.is_a?(String) && songs.include?(user_input)  #checks for a string
    puts "Playing #{user_input}"
  elsif  songs.length >= user_input.to_i && user_input.to_i > 0
    song = user_input.to_i - 1
    puts "Playing #{songs[song]} "
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help()
  puts "Please enter a command:"
  user_command = gets.chomp
  if user_command == "help"
    help()
  elsif user_command == "play"
    play()
  elsif user_command == "list"
    list()
  elsif user_command == "exit"
    exit()
  else
    puts "Please enter a command:"
  end
end

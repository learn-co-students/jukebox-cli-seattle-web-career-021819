require 'pry'
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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs_arr)
  songs_arr.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs_arr)
  puts "Please enter a song name or number:";
  input = gets.chomp;
  if songs_arr.include?(input)
    puts "Playing #{input}"
  elsif input.to_i == 0
    puts "Invalid input, please try again"
  elsif (input.to_i == Float|| Integer) && (songs_arr.length > (input.to_i-1))
    puts "Playing #{songs_arr[input.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs_arr)
  help
  puts "Please enter a command:"
  response = gets.chomp
  if response == "exit"
    exit_jukebox
  elsif response == "list"
    list(songs)
  elsif response == "help"
      help
  elsif response == "play"
      play(songs)
  end
end

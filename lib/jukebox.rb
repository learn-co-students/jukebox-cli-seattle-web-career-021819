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

def list(array)
  array.each_with_index do |val, index|
    puts "#{index +1}. #{val}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  song_name_or_number = gets.chomp

  array.each_with_index do |song, index|
    if song_name_or_number.to_i == (index +=1)
      puts "Playing #{song}"
    elsif song_name_or_number == song
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
end
end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
  puts "Please enter a command:"
  user_response = gets.chomp

  case user_response
  when "list"
    list
  when "play"
    play
  when "help"
    help
  when "exit"
    exit_jukebox
    break
  end
end
end

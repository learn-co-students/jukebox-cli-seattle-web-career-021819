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

def list(songs_array)
  songs_array.each_with_index do |element, index|
    puts "#{index + 1}. #{element}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  response = gets.chomp
  songs_array.each do |string|
    if string.include?(response)
      puts "Playing #{string}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
  help
  puts "Please enter a command:"
  response = gets.chomp
  until response == "exit"
    if response == "help"
      help
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "list"
      list
      puts "Please enter a command:"
      response = gets.chomp
    else response == "play"
      play
      puts "Please enter a command:"
      response = gets.chomp
    end
  end
  exit_jukebox
end

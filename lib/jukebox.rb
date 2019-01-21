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
  puts "I accept the following commands: \n"  "- help : displays  this help message \n"  "- list : displays a list of songs you can play \n"  "- play : lets you choose a song to play \n"  "- exit : exits this program \n"
end


def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  if songs.include?(song_choice)
    puts "Playing #{song_choice}"
  elsif (1..9).to_a.include?(song_choice.to_i)
    puts "Playing #{songs[song_choice.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end


def list(songs)
  songs.each_with_index do |val, index|
    puts "#{index+1}. #{val}"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  loop do
    puts "Please enter a command:"
    input = gets.chomp
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
      break
    end
  end
end
    
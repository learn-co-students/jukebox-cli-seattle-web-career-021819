#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => Users/mollynemerever/Development/code/jukebox-cli-seattle-web-career-021819/audio/Emerald-Park/01.mp3,
"LiberTeens" => Users/mollynemerever/Development/code/jukebox-cli-seattle-web-career-021819/audio/Emerald-Park/02.mp3,
"Hamburg" =>  Users/mollynemerever/Development/code/jukebox-cli-seattle-web-career-021819/audio/Emerald-Park/03.mp3,
"Guiding Light" => Users/mollynemerever/Development/code/jukebox-cli-seattle-web-career-021819/audio/Emerald-Park/04.mp3,
"Wolf" => Users/mollynemerever/Development/code/jukebox-cli-seattle-web-career-021819/audio/Emerald-Park/05.mp3,
"Blue" => Users/mollynemerever/Development/code/jukebox-cli-seattle-web-career-021819/audio/Emerald-Park/06.mp3,
"Graduation Failed" => Users/mollynemerever/Development/code/jukebox-cli-seattle-web-career-021819/audio/Emerald-Park/07.mp3
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  my_songs.each do |key, value|
    puts "#{key}"
  end
end


def play(my_songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if user_input == my_songs.has_key?(user_input)
    filepath = my_songs[user_input]
    system 'open #{filepath}'
  else
    puts "Invalid input, please try again"
  end
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
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

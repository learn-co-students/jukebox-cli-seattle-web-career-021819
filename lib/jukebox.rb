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
  p "I accept the following commands: "
  p "- help : displays this help message"
  p "- list : displays a list of songs you can play"
  p "- play : lets you choose a song to play"
  p "- exit : exits this program"
end

def play(array)
  p "Please enter a song name or number."
  choice = gets.chomp
  case choice
  when "1", "1901", "Phoenix - 1901"
    song = array[0]
  when "2", "Wait Up", "Tokyo Police Club - Wait Up"
    song = array[1]
  when "3", "Too Much", "Sufjan Stevens - Too Much"
    song = array[2]
  when "4", "Young Blood", "The Naked and the Famous - Young Blood"
    song = array[3]
  when "5", "Tiga", "(Far From) Home - Tiga"
    song = array[4]
  when "6", "Abducted", "The Cults - Abducted"
    song = array[5]
  when "7", "Consolation Prize", "Phoenix - Consolation Prize"
    song = array[6]
  when "8", "Cats in the Cradle", "Harry Chapin - Cats in the Cradle"
    song = array[7]
  when "9", "Keep It Loose, Keep It Tight", "Amos - Keep It Loose, Keep It Tight"
    song = array[8]
  else
    p "Invalid input, please try again."
  end
  p "Playing #{song}"
end

def list(array)
  array.each_index {|i|
    p (i + 1).to_s + ". " + array[i]
  }
end

def exit_jukebox
  p "Goodbye"
end

def run(array)
  help
	p "Please enter a command: "
	choice = gets.chomp
	case choice
		when "help"
			help
		when "list"
			list(array)
		when "play"
			play(array)
		when "exit"
			exit_jukebox
		else
			p "invalid option"
		end
end
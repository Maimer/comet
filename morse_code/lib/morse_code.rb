def decode(code)
  morse = {
    '.-'    =>   "a", '-...'  =>   "b", '-.-.'  =>   "c", '-..'   =>   "d",
    '.'     =>   "e", '..-.'  =>   "f", '--.'   =>   "g", '....'  =>   "h",
    '..'    =>   "i", '.---'  =>   "j", '-.-'   =>   "k", '.-..'  =>   "l",
    '--'    =>   "m", '-.'    =>   "n", '---'   =>   "o", '.--.'  =>   "p",
    '--.-'  =>   "q", '.-.'   =>   "r", '...'   =>   "s", '-'     =>   "t",
    '..-'   =>   "u", '...-'  =>   "v", '.--'   =>   "w", '-..-'  =>   "x",
    '-.--'  =>   "y", '--..'  =>   "z", ".----" =>   "1", "..---" =>   "2",
    "...--" =>   "3", "....-" =>   "4", "....." =>   "5", "-...." =>   "6",
    "--..." =>   "7", "---.." =>   "8", "----." =>   "9", "-----" =>   "0",
    "-.-.--"=>   "!", ".-.-.-"=>   ".", ".----."=>   "'", "--..--"=>   ","
  }

  output = []
  words = []
  code = code.split("/")
  code.each do |morse|
    words << morse.split(" ")
  end
  words.each do |word|
    word.each_with_index do |letter, i|
      word[i] = morse[letter]
    end
    output << word.join.upcase
  end
  output.join(" ")
end

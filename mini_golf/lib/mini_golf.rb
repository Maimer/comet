require 'csv'

def display_scores(file_path)
  players = {}
  CSV.foreach(file_path, headers: true) do |row|
    strokes = 0
    for count in 1..9
      strokes += row[count.to_s].to_i
    end
    players[row["Name"]] = strokes
  end

  players = players.sort_by { |name, score| score }

  puts "Mini Golf Scores\n\n"

  players.each_with_index do |player, i|
    puts "#{i+1}. #{player[0]} with #{player[1]} strokes."
  end
end

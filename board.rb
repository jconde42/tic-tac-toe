class Board

  attr_reader :grid

  def initialize
    @grid = [[" "," "," "],[" "," "," "],[" "," "," "]]
  end

  def reset 
    @grid = [[" "," "," "],[" "," "," "],[" "," "," "]]
  end

  def edit pos1, pos2, player
    if @grid[pos1][pos2] == " "
      @grid[pos1][pos2] = player.piece
      return true
    else
      return false
    end
  end

  def display
    puts "   -------\n"
    (0..2).each do |row|
      print row+1
      print " "
      (0..2).each do |col|
        print "|" + @grid[row][col] + "|"
      end
      puts "\n   -------"
    end
    print "   1  2  3\n"
  end

  def full?

    flag = true

    @grid.each do |row|
      row.each do |square|
        if square == " "
          flag = false
        end
      end
    end

    flag
  end

end

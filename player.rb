
class Player
  attr_reader :piece

  def initialize piece
    @piece = piece
  end

  def win? board
    flag = false
    win_at = nil
    grid = board.grid

    tl = grid[0][0]
    tc = grid[0][1]
    tr = grid[0][2]
    ml = grid[1][0]
    mc = grid[1][1]
    mr = grid[1][2]
    bl = grid[2][0]
    bc = grid[2][1]
    br = grid[2][2]

    if tr == mc and mc == bl #pos slope
      flag = true
      win_at = tr
    elsif tl == mc and mc == br #neg slope
      flag = true
      win_at = tl
    elsif tl == ml and ml == bl #vert left
      flag = true
      win_at = tl
    elsif tc == mc and mc == bc #vert cent
      flag = true
      win_at = tc
    elsif tr == mr and mr== br #vert right
      flag = true
      win_at = tr
    elsif tl == tc and tc == tr #horz top
      flag = true
      win_at = tl
    elsif ml == mc and mc == mr #horz cent
      flag = true
      win_at = ml
    elsif bl == bc and bc == br #horz bottom
      flag = true
      win_at = bl
    else
      return false
    end

    if flag == true and @piece == win_at
      return true
    end
  end
end

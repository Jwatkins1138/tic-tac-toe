
class GameBoard
  
  def initialize
    @a1 = " "
    @a2 = " "
    @a3 = " "
    @b1 = " "
    @b2 = " "
    @b3 = " "
    @c1 = " "
    @c2 = " "
    @c3 = " "
    @spaces = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
    @game_on = true
  end

  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3, :game_on, :spaces

  def check_game
    @game_on
  end
  
  def draw_board
    puts "#{@a1}|#{@a2}|#{@a3}|"
    puts "#{@b1}|#{@b2}|#{@b3}|"
    puts "#{@c1}|#{@c2}|#{@c3}|"
  end

  def show_spaces
    @spaces
  end

  def move(space, player)
    case(space)
    when "a1"
      @a1 = player
      @spaces.delete("a1")
    when "a2"
      @a2 = player
      @spaces.delete("a2")
    when "a3"
      @a3 = player
      @spaces.delete("a3")
    when "b1"
      @b1 = player
      @spaces.delete("b1")
    when "b2"
      @b2 = player
      @spaces.delete("b2")
    when "b3"
      @b3 = player
      @spaces.delete("b3")
    when "c1"
      @c1 = player
      @spaces.delete("c1")
    when "c2"
      @c2 = player
      @spaces.delete("c2")
    when "c3"
      @c3 = player
      @spaces.delete("c3")
  end

  def check_winner
    if @a1 == "x" && @a2 == "x" && @a3 == "x"
      puts "x has won the game"
      @game_on = false
    elsif @b1 == "x" && @b2 == "x" && @b3 == "x"
      puts "x has won the game"
      @game_on = false
    elsif @c1 == "x" && @c2 == "x" && @c3 == "x"
      puts "x has won the game"
      @game_on = false
    elsif @a1 == "x" && @b1 == "x" && @c1 == "x"
      puts "x has won the game"
      @game_on = false
    elsif @a2 == "x" && @b2 == "x" && @c2 == "x"
      puts "x has won the game"
      @game_on = false
    elsif @a3 == "x" && @b3 == "x" && @c3 == "x"
      puts "x has won the game"
      @game_on = false
    elsif @a1 == "x" && @b2 == "x" && @c3 == "x"
      puts "x has won the game"
      @game_on = false
    elsif @a3 == "x" && @b2 == "x" && @c1 == "x"
      puts "x has won the game"
      @game_on = false
    elsif @a1 == "o" && @a2 == "o" && @a3 == "o"
      puts "o has won the game"
      @game_on = false
    elsif @b1 == "o" && @b2 == "o" && @b3 == "o"
      puts "o has won the game"
      @game_on = false
    elsif @c1 == "o" && @c2 == "o" && @c3 == "o"
      puts "o has won the game"
      @game_on = false
    elsif @a1 == "o" && @b1 == "o" && @c1 == "o"
      puts "o has won the game"
      @game_on = false
    elsif @a2 == "o" && @b2 == "o" && @c2 == "o"
      puts "o has won the game"
      @game_on = false
    elsif @a3 == "o" && @b3 == "o" && @c3 == "o"
      puts "o has won the game"
      @game_on = false
    elsif @a1 == "o" && @b2 == "o" && @c3 == "o"
      puts "o has won the game"
      @game_on = false
    elsif @a3 == "o" && @b2 == "o" && @c1 == "o"
      puts "o has won the game"
      @game_on = false                  
    end
  end
end

game_board = GameBoard.new
game_board.draw_board

while game_board.check_game
  puts "available spaces #{game_board.show_spaces}"
  puts "player x please select a square: "
  move = gets.chomp
  while game_board.show_spaces.include?(move) == false
    puts "please enter a valid square: "
    move = gets.chomp
  end
  game_board.move(move, "x")
  game_board.draw_board
  game_board.check_winner
  if game_board.check_game == false
    break
  end
    puts "available spaces #{game_board.show_spaces}"
    puts "player o please select a square: "
    move = gets.chomp
    while game_board.show_spaces.include?(move) == false
      puts "please enter a valid square: "
      move = gets.chomp
    end
    game_board.move(move, "o")
    game_board.draw_board
    game_board.check_winner
end
end
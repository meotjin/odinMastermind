require_relative 'combination'
require_relative 'board'

class Game
  def initialize(board)
    @board = board
    @colors = ["#{'1'.white}", "#{'2'.green}", "#{'3'.blue}", "#{'4'.yellow}", "#{'5'.red}", "#{'6'.black}"]
    puts "#{'coder'.red} made a code. Try to geuss it!"
  end

  def play
    win = false
    while !@board.out_of_geuss && !win
      outcome = @board.geuss(take_geuss)
      show(outcome[0], outcome[2], outcome[3])
      win = outcome[1]
    end
    win || lose
  end

  private

  def take_geuss
    puts 'enter your geuss:'
    geuss = gets.chomp
    raise if geuss.length != 4
  rescue StandardError
    puts 'enter a 4 digit number representing your geuss!'
    puts geuss
    retry
  else
    geuss
  end

  def show(array, spot_on, misplaced)
    array.each { |digit| print @colors[digit - 1] + ' ' }
    puts " spot on!: #{spot_on}  misplaced: #{misplaced}  geusses: #{@board.geusses}"
  end

  def win
    puts "\nHooray! You Won!"
  end

  def lose
    print "\n:( You ran out of geusses. the code was "
    puts "#{@board.answer.each { |digit| print @colors[digit - 1] + ' ' }}"
  end
end
